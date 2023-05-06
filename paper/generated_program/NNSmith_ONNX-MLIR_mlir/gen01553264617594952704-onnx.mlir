module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [4 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr<i32>, %arg34: !llvm.ptr<i32>, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0", "v4_0", "v3_0", "v2_0"], llvm.emit_c_interface, output_names = ["v8_0", "v0_0"]} {
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
    %48 = llvm.mlir.constant(0 : i64) : i64
    %49 = llvm.mlir.constant(-1 : i64) : i64
    %50 = llvm.mlir.constant(4 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.null : !llvm.ptr<i32>
    %56 = llvm.getelementptr %55[%50] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %57 = llvm.ptrtoint %56 : !llvm.ptr<i32> to i64
    %58 = llvm.mlir.constant(16 : index) : i64
    %59 = llvm.add %57, %58  : i64
    %60 = llvm.call @malloc(%59) : (i64) -> !llvm.ptr<i8>
    %61 = llvm.bitcast %60 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %62 = llvm.ptrtoint %61 : !llvm.ptr<i32> to i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.sub %58, %63  : i64
    %65 = llvm.add %62, %64  : i64
    %66 = llvm.urem %65, %58  : i64
    %67 = llvm.sub %65, %66  : i64
    %68 = llvm.inttoptr %67 : i64 to !llvm.ptr<i32>
    %69 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %70 = llvm.insertvalue %61, %69[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %68, %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.insertvalue %72, %71[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %50, %73[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %51, %74[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %52, %75[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %53, %76[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %51, %77[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %52, %78[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %53, %79[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.insertvalue %54, %80[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%82 : i64)
  ^bb1(%85: i64):  // 2 preds: ^bb0, ^bb11
    %86 = llvm.icmp "slt" %85, %83 : i64
    llvm.cond_br %86, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%87 : i64)
  ^bb3(%90: i64):  // 2 preds: ^bb2, ^bb10
    %91 = llvm.icmp "slt" %90, %88 : i64
    llvm.cond_br %91, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%92 : i64)
  ^bb5(%95: i64):  // 2 preds: ^bb4, ^bb9
    %96 = llvm.icmp "slt" %95, %93 : i64
    llvm.cond_br %96, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%97 : i64)
  ^bb7(%100: i64):  // 2 preds: ^bb6, ^bb8
    %101 = llvm.icmp "slt" %100, %98 : i64
    llvm.cond_br %101, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %102 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.add %85, %90  : i64
    %104 = llvm.add %103, %95  : i64
    %105 = llvm.add %104, %100  : i64
    %106 = llvm.getelementptr %102[%105] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %107 = llvm.load %106 : !llvm.ptr<i32>
    %108 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.add %85, %90  : i64
    %110 = llvm.add %109, %95  : i64
    %111 = llvm.add %110, %100  : i64
    %112 = llvm.getelementptr %108[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %107, %112 : !llvm.ptr<i32>
    %113 = llvm.add %100, %99  : i64
    llvm.br ^bb7(%113 : i64)
  ^bb9:  // pred: ^bb7
    %114 = llvm.add %95, %94  : i64
    llvm.br ^bb5(%114 : i64)
  ^bb10:  // pred: ^bb5
    %115 = llvm.add %90, %89  : i64
    llvm.br ^bb3(%115 : i64)
  ^bb11:  // pred: ^bb3
    %116 = llvm.add %85, %84  : i64
    llvm.br ^bb1(%116 : i64)
  ^bb12:  // pred: ^bb1
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%117 : i64)
  ^bb13(%120: i64):  // 2 preds: ^bb12, ^bb23
    %121 = llvm.icmp "slt" %120, %118 : i64
    llvm.cond_br %121, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%122 : i64)
  ^bb15(%125: i64):  // 2 preds: ^bb14, ^bb22
    %126 = llvm.icmp "slt" %125, %123 : i64
    llvm.cond_br %126, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%127 : i64)
  ^bb17(%130: i64):  // 2 preds: ^bb16, ^bb21
    %131 = llvm.icmp "slt" %130, %128 : i64
    llvm.cond_br %131, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%132 : i64)
  ^bb19(%135: i64):  // 2 preds: ^bb18, ^bb20
    %136 = llvm.icmp "slt" %135, %133 : i64
    llvm.cond_br %136, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.add %120, %137  : i64
    %139 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.add %120, %125  : i64
    %141 = llvm.add %140, %130  : i64
    %142 = llvm.add %141, %135  : i64
    %143 = llvm.getelementptr %139[%142] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %144 = llvm.load %143 : !llvm.ptr<i32>
    %145 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.add %138, %125  : i64
    %147 = llvm.add %146, %130  : i64
    %148 = llvm.add %147, %135  : i64
    %149 = llvm.getelementptr %145[%148] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %144, %149 : !llvm.ptr<i32>
    %150 = llvm.add %135, %134  : i64
    llvm.br ^bb19(%150 : i64)
  ^bb21:  // pred: ^bb19
    %151 = llvm.add %130, %129  : i64
    llvm.br ^bb17(%151 : i64)
  ^bb22:  // pred: ^bb17
    %152 = llvm.add %125, %124  : i64
    llvm.br ^bb15(%152 : i64)
  ^bb23:  // pred: ^bb15
    %153 = llvm.add %120, %119  : i64
    llvm.br ^bb13(%153 : i64)
  ^bb24:  // pred: ^bb13
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%154 : i64)
  ^bb25(%157: i64):  // 2 preds: ^bb24, ^bb35
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%159 : i64)
  ^bb27(%162: i64):  // 2 preds: ^bb26, ^bb34
    %163 = llvm.icmp "slt" %162, %160 : i64
    llvm.cond_br %163, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%164 : i64)
  ^bb29(%167: i64):  // 2 preds: ^bb28, ^bb33
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%169 : i64)
  ^bb31(%172: i64):  // 2 preds: ^bb30, ^bb32
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %174 = llvm.mlir.constant(2 : index) : i64
    %175 = llvm.add %157, %174  : i64
    %176 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.add %157, %162  : i64
    %178 = llvm.add %177, %167  : i64
    %179 = llvm.add %178, %172  : i64
    %180 = llvm.getelementptr %176[%179] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %181 = llvm.load %180 : !llvm.ptr<i32>
    %182 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.add %175, %162  : i64
    %184 = llvm.add %183, %167  : i64
    %185 = llvm.add %184, %172  : i64
    %186 = llvm.getelementptr %182[%185] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %181, %186 : !llvm.ptr<i32>
    %187 = llvm.add %172, %171  : i64
    llvm.br ^bb31(%187 : i64)
  ^bb33:  // pred: ^bb31
    %188 = llvm.add %167, %166  : i64
    llvm.br ^bb29(%188 : i64)
  ^bb34:  // pred: ^bb29
    %189 = llvm.add %162, %161  : i64
    llvm.br ^bb27(%189 : i64)
  ^bb35:  // pred: ^bb27
    %190 = llvm.add %157, %156  : i64
    llvm.br ^bb25(%190 : i64)
  ^bb36:  // pred: ^bb25
    %191 = llvm.mlir.constant(0 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%191 : i64)
  ^bb37(%194: i64):  // 2 preds: ^bb36, ^bb47
    %195 = llvm.icmp "slt" %194, %192 : i64
    llvm.cond_br %195, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %196 = llvm.mlir.constant(0 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%196 : i64)
  ^bb39(%199: i64):  // 2 preds: ^bb38, ^bb46
    %200 = llvm.icmp "slt" %199, %197 : i64
    llvm.cond_br %200, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%201 : i64)
  ^bb41(%204: i64):  // 2 preds: ^bb40, ^bb45
    %205 = llvm.icmp "slt" %204, %202 : i64
    llvm.cond_br %205, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %206 = llvm.mlir.constant(0 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%206 : i64)
  ^bb43(%209: i64):  // 2 preds: ^bb42, ^bb44
    %210 = llvm.icmp "slt" %209, %207 : i64
    llvm.cond_br %210, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %211 = llvm.mlir.constant(3 : index) : i64
    %212 = llvm.add %194, %211  : i64
    %213 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.add %194, %199  : i64
    %215 = llvm.add %214, %204  : i64
    %216 = llvm.add %215, %209  : i64
    %217 = llvm.getelementptr %213[%216] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %218 = llvm.load %217 : !llvm.ptr<i32>
    %219 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.add %212, %199  : i64
    %221 = llvm.add %220, %204  : i64
    %222 = llvm.add %221, %209  : i64
    %223 = llvm.getelementptr %219[%222] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %218, %223 : !llvm.ptr<i32>
    %224 = llvm.add %209, %208  : i64
    llvm.br ^bb43(%224 : i64)
  ^bb45:  // pred: ^bb43
    %225 = llvm.add %204, %203  : i64
    llvm.br ^bb41(%225 : i64)
  ^bb46:  // pred: ^bb41
    %226 = llvm.add %199, %198  : i64
    llvm.br ^bb39(%226 : i64)
  ^bb47:  // pred: ^bb39
    %227 = llvm.add %194, %193  : i64
    llvm.br ^bb37(%227 : i64)
  ^bb48:  // pred: ^bb37
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.null : !llvm.ptr<i64>
    %233 = llvm.getelementptr %232[%228] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %234 = llvm.ptrtoint %233 : !llvm.ptr<i64> to i64
    %235 = llvm.mlir.constant(16 : index) : i64
    %236 = llvm.add %234, %235  : i64
    %237 = llvm.call @malloc(%236) : (i64) -> !llvm.ptr<i8>
    %238 = llvm.bitcast %237 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %239 = llvm.ptrtoint %238 : !llvm.ptr<i64> to i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.sub %235, %240  : i64
    %242 = llvm.add %239, %241  : i64
    %243 = llvm.urem %242, %235  : i64
    %244 = llvm.sub %242, %243  : i64
    %245 = llvm.inttoptr %244 : i64 to !llvm.ptr<i64>
    %246 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %247 = llvm.insertvalue %238, %246[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %248 = llvm.insertvalue %245, %247[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.insertvalue %249, %248[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %251 = llvm.insertvalue %228, %250[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %252 = llvm.insertvalue %229, %251[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %253 = llvm.insertvalue %230, %252[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %254 = llvm.insertvalue %229, %253[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %255 = llvm.insertvalue %230, %254[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %256 = llvm.insertvalue %231, %255[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%257 : i64)
  ^bb49(%260: i64):  // 2 preds: ^bb48, ^bb56
    %261 = llvm.icmp "slt" %260, %258 : i64
    llvm.cond_br %261, ^bb50, ^bb57
  ^bb50:  // pred: ^bb49
    %262 = llvm.mlir.constant(0 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%262 : i64)
  ^bb51(%265: i64):  // 2 preds: ^bb50, ^bb55
    %266 = llvm.icmp "slt" %265, %263 : i64
    llvm.cond_br %266, ^bb52, ^bb56
  ^bb52:  // pred: ^bb51
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%267 : i64)
  ^bb53(%270: i64):  // 2 preds: ^bb52, ^bb54
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb54, ^bb55
  ^bb54:  // pred: ^bb53
    %272 = llvm.extractvalue %256[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %273 = llvm.add %260, %265  : i64
    %274 = llvm.add %273, %270  : i64
    %275 = llvm.getelementptr %272[%274] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %49, %275 : !llvm.ptr<i64>
    %276 = llvm.add %270, %269  : i64
    llvm.br ^bb53(%276 : i64)
  ^bb55:  // pred: ^bb53
    %277 = llvm.add %265, %264  : i64
    llvm.br ^bb51(%277 : i64)
  ^bb56:  // pred: ^bb51
    %278 = llvm.add %260, %259  : i64
    llvm.br ^bb49(%278 : i64)
  ^bb57:  // pred: ^bb49
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.mlir.constant(4 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%279 : i64)
  ^bb58(%282: i64):  // 2 preds: ^bb57, ^bb68
    %283 = llvm.icmp "slt" %282, %280 : i64
    llvm.cond_br %283, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%284 : i64)
  ^bb60(%287: i64):  // 2 preds: ^bb59, ^bb67
    %288 = llvm.icmp "slt" %287, %285 : i64
    llvm.cond_br %288, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%289 : i64)
  ^bb62(%292: i64):  // 2 preds: ^bb61, ^bb66
    %293 = llvm.icmp "slt" %292, %290 : i64
    llvm.cond_br %293, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%294 : i64)
  ^bb64(%297: i64):  // 2 preds: ^bb63, ^bb65
    %298 = llvm.icmp "slt" %297, %295 : i64
    llvm.cond_br %298, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %299 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.add %282, %287  : i64
    %301 = llvm.add %300, %292  : i64
    %302 = llvm.add %301, %297  : i64
    %303 = llvm.getelementptr %299[%302] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %304 = llvm.load %303 : !llvm.ptr<i32>
    %305 = llvm.extractvalue %256[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %306 = llvm.add %287, %292  : i64
    %307 = llvm.add %306, %297  : i64
    %308 = llvm.getelementptr %305[%307] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %309 = llvm.load %308 : !llvm.ptr<i64>
    %310 = llvm.icmp "slt" %309, %48 : i64
    %311 = llvm.select %310, %48, %309 : i1, i64
    %312 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.add %311, %287  : i64
    %314 = llvm.add %313, %292  : i64
    %315 = llvm.add %314, %297  : i64
    %316 = llvm.getelementptr %312[%315] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %317 = llvm.load %316 : !llvm.ptr<i32>
    %318 = llvm.icmp "slt" %304, %317 : i32
    %319 = llvm.select %318, %282, %311 : i1, i64
    %320 = llvm.extractvalue %256[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %321 = llvm.add %287, %292  : i64
    %322 = llvm.add %321, %297  : i64
    %323 = llvm.getelementptr %320[%322] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %319, %323 : !llvm.ptr<i64>
    %324 = llvm.add %297, %296  : i64
    llvm.br ^bb64(%324 : i64)
  ^bb66:  // pred: ^bb64
    %325 = llvm.add %292, %291  : i64
    llvm.br ^bb62(%325 : i64)
  ^bb67:  // pred: ^bb62
    %326 = llvm.add %287, %286  : i64
    llvm.br ^bb60(%326 : i64)
  ^bb68:  // pred: ^bb60
    %327 = llvm.add %282, %281  : i64
    llvm.br ^bb58(%327 : i64)
  ^bb69:  // pred: ^bb58
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.null : !llvm.ptr<i64>
    %332 = llvm.getelementptr %331[%328] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %333 = llvm.ptrtoint %332 : !llvm.ptr<i64> to i64
    %334 = llvm.mlir.constant(16 : index) : i64
    %335 = llvm.add %333, %334  : i64
    %336 = llvm.call @malloc(%335) : (i64) -> !llvm.ptr<i8>
    %337 = llvm.bitcast %336 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %338 = llvm.ptrtoint %337 : !llvm.ptr<i64> to i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.sub %334, %339  : i64
    %341 = llvm.add %338, %340  : i64
    %342 = llvm.urem %341, %334  : i64
    %343 = llvm.sub %341, %342  : i64
    %344 = llvm.inttoptr %343 : i64 to !llvm.ptr<i64>
    %345 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %346 = llvm.insertvalue %337, %345[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %347 = llvm.insertvalue %344, %346[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.insertvalue %348, %347[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %350 = llvm.insertvalue %328, %349[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %351 = llvm.insertvalue %329, %350[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %352 = llvm.insertvalue %329, %351[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %353 = llvm.insertvalue %330, %352[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %354 = llvm.mlir.constant(0 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%354 : i64)
  ^bb70(%357: i64):  // 2 preds: ^bb69, ^bb74
    %358 = llvm.icmp "slt" %357, %355 : i64
    llvm.cond_br %358, ^bb71, ^bb75
  ^bb71:  // pred: ^bb70
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%359 : i64)
  ^bb72(%362: i64):  // 2 preds: ^bb71, ^bb73
    %363 = llvm.icmp "slt" %362, %360 : i64
    llvm.cond_br %363, ^bb73, ^bb74
  ^bb73:  // pred: ^bb72
    %364 = llvm.extractvalue %353[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %365 = llvm.add %357, %362  : i64
    %366 = llvm.getelementptr %364[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %49, %366 : !llvm.ptr<i64>
    %367 = llvm.add %362, %361  : i64
    llvm.br ^bb72(%367 : i64)
  ^bb74:  // pred: ^bb72
    %368 = llvm.add %357, %356  : i64
    llvm.br ^bb70(%368 : i64)
  ^bb75:  // pred: ^bb70
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%369 : i64)
  ^bb76(%372: i64):  // 2 preds: ^bb75, ^bb83
    %373 = llvm.icmp "slt" %372, %370 : i64
    llvm.cond_br %373, ^bb77, ^bb84
  ^bb77:  // pred: ^bb76
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%374 : i64)
  ^bb78(%377: i64):  // 2 preds: ^bb77, ^bb82
    %378 = llvm.icmp "slt" %377, %375 : i64
    llvm.cond_br %378, ^bb79, ^bb83
  ^bb79:  // pred: ^bb78
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%379 : i64)
  ^bb80(%382: i64):  // 2 preds: ^bb79, ^bb81
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb81, ^bb82
  ^bb81:  // pred: ^bb80
    %384 = llvm.extractvalue %256[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %385 = llvm.add %372, %377  : i64
    %386 = llvm.add %385, %382  : i64
    %387 = llvm.getelementptr %384[%386] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %388 = llvm.load %387 : !llvm.ptr<i64>
    %389 = llvm.extractvalue %353[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %390 = llvm.add %377, %382  : i64
    %391 = llvm.getelementptr %389[%390] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %392 = llvm.load %391 : !llvm.ptr<i64>
    %393 = llvm.icmp "slt" %392, %48 : i64
    %394 = llvm.select %393, %48, %392 : i1, i64
    %395 = llvm.extractvalue %256[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %396 = llvm.add %394, %377  : i64
    %397 = llvm.add %396, %382  : i64
    %398 = llvm.getelementptr %395[%397] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %399 = llvm.load %398 : !llvm.ptr<i64>
    %400 = llvm.icmp "slt" %388, %399 : i64
    %401 = llvm.select %400, %372, %394 : i1, i64
    %402 = llvm.extractvalue %353[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %403 = llvm.add %377, %382  : i64
    %404 = llvm.getelementptr %402[%403] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %401, %404 : !llvm.ptr<i64>
    %405 = llvm.add %382, %381  : i64
    llvm.br ^bb80(%405 : i64)
  ^bb82:  // pred: ^bb80
    %406 = llvm.add %377, %376  : i64
    llvm.br ^bb78(%406 : i64)
  ^bb83:  // pred: ^bb78
    %407 = llvm.add %372, %371  : i64
    llvm.br ^bb76(%407 : i64)
  ^bb84:  // pred: ^bb76
    %408 = llvm.mlir.constant(4 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.null : !llvm.ptr<i64>
    %414 = llvm.getelementptr %413[%408] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %415 = llvm.ptrtoint %414 : !llvm.ptr<i64> to i64
    %416 = llvm.mlir.constant(16 : index) : i64
    %417 = llvm.add %415, %416  : i64
    %418 = llvm.call @malloc(%417) : (i64) -> !llvm.ptr<i8>
    %419 = llvm.bitcast %418 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %420 = llvm.ptrtoint %419 : !llvm.ptr<i64> to i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.sub %416, %421  : i64
    %423 = llvm.add %420, %422  : i64
    %424 = llvm.urem %423, %416  : i64
    %425 = llvm.sub %423, %424  : i64
    %426 = llvm.inttoptr %425 : i64 to !llvm.ptr<i64>
    %427 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %428 = llvm.insertvalue %419, %427[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.insertvalue %426, %428[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.mlir.constant(0 : index) : i64
    %431 = llvm.insertvalue %430, %429[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %408, %431[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %409, %432[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %410, %433[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %411, %434[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %409, %435[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %410, %436[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %411, %437[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %412, %438[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(4 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%440 : i64)
  ^bb85(%443: i64):  // 2 preds: ^bb84, ^bb95
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%445 : i64)
  ^bb87(%448: i64):  // 2 preds: ^bb86, ^bb94
    %449 = llvm.icmp "slt" %448, %446 : i64
    llvm.cond_br %449, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%450 : i64)
  ^bb89(%453: i64):  // 2 preds: ^bb88, ^bb93
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%455 : i64)
  ^bb91(%458: i64):  // 2 preds: ^bb90, ^bb92
    %459 = llvm.icmp "slt" %458, %456 : i64
    llvm.cond_br %459, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %460 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.add %443, %448  : i64
    %462 = llvm.add %461, %453  : i64
    %463 = llvm.add %462, %458  : i64
    %464 = llvm.getelementptr %460[%463] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %465 = llvm.load %464 : !llvm.ptr<i32>
    %466 = llvm.sext %465 : i32 to i64
    %467 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.add %443, %448  : i64
    %469 = llvm.add %468, %453  : i64
    %470 = llvm.add %469, %458  : i64
    %471 = llvm.getelementptr %467[%470] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %466, %471 : !llvm.ptr<i64>
    %472 = llvm.add %458, %457  : i64
    llvm.br ^bb91(%472 : i64)
  ^bb93:  // pred: ^bb91
    %473 = llvm.add %453, %452  : i64
    llvm.br ^bb89(%473 : i64)
  ^bb94:  // pred: ^bb89
    %474 = llvm.add %448, %447  : i64
    llvm.br ^bb87(%474 : i64)
  ^bb95:  // pred: ^bb87
    %475 = llvm.add %443, %442  : i64
    llvm.br ^bb85(%475 : i64)
  ^bb96:  // pred: ^bb85
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    %481 = llvm.mlir.null : !llvm.ptr<i64>
    %482 = llvm.getelementptr %481[%476] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %483 = llvm.ptrtoint %482 : !llvm.ptr<i64> to i64
    %484 = llvm.mlir.constant(16 : index) : i64
    %485 = llvm.add %483, %484  : i64
    %486 = llvm.call @malloc(%485) : (i64) -> !llvm.ptr<i8>
    %487 = llvm.bitcast %486 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %488 = llvm.ptrtoint %487 : !llvm.ptr<i64> to i64
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.sub %484, %489  : i64
    %491 = llvm.add %488, %490  : i64
    %492 = llvm.urem %491, %484  : i64
    %493 = llvm.sub %491, %492  : i64
    %494 = llvm.inttoptr %493 : i64 to !llvm.ptr<i64>
    %495 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %496 = llvm.insertvalue %487, %495[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.insertvalue %494, %496[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.mlir.constant(0 : index) : i64
    %499 = llvm.insertvalue %498, %497[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.insertvalue %476, %499[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.insertvalue %477, %500[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.insertvalue %478, %501[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.insertvalue %479, %502[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.insertvalue %477, %503[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.insertvalue %478, %504[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.insertvalue %479, %505[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %507 = llvm.insertvalue %480, %506[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.mlir.constant(0 : index) : i64
    %509 = llvm.mlir.constant(4 : index) : i64
    %510 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%508 : i64)
  ^bb97(%511: i64):  // 2 preds: ^bb96, ^bb107
    %512 = llvm.icmp "slt" %511, %509 : i64
    llvm.cond_br %512, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %513 = llvm.mlir.constant(0 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    %515 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%513 : i64)
  ^bb99(%516: i64):  // 2 preds: ^bb98, ^bb106
    %517 = llvm.icmp "slt" %516, %514 : i64
    llvm.cond_br %517, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %518 = llvm.mlir.constant(0 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%518 : i64)
  ^bb101(%521: i64):  // 2 preds: ^bb100, ^bb105
    %522 = llvm.icmp "slt" %521, %519 : i64
    llvm.cond_br %522, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %523 = llvm.mlir.constant(0 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%523 : i64)
  ^bb103(%526: i64):  // 2 preds: ^bb102, ^bb104
    %527 = llvm.icmp "slt" %526, %524 : i64
    llvm.cond_br %527, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %528 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %529 = llvm.add %511, %516  : i64
    %530 = llvm.add %529, %521  : i64
    %531 = llvm.add %530, %526  : i64
    %532 = llvm.getelementptr %528[%531] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %533 = llvm.load %532 : !llvm.ptr<i64>
    %534 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %535 = llvm.add %511, %516  : i64
    %536 = llvm.add %535, %521  : i64
    %537 = llvm.add %536, %526  : i64
    %538 = llvm.getelementptr %534[%537] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %539 = llvm.load %538 : !llvm.ptr<i64>
    %540 = llvm.add %533, %539  : i64
    %541 = llvm.extractvalue %507[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.add %511, %516  : i64
    %543 = llvm.add %542, %521  : i64
    %544 = llvm.add %543, %526  : i64
    %545 = llvm.getelementptr %541[%544] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %540, %545 : !llvm.ptr<i64>
    %546 = llvm.add %526, %525  : i64
    llvm.br ^bb103(%546 : i64)
  ^bb105:  // pred: ^bb103
    %547 = llvm.add %521, %520  : i64
    llvm.br ^bb101(%547 : i64)
  ^bb106:  // pred: ^bb101
    %548 = llvm.add %516, %515  : i64
    llvm.br ^bb99(%548 : i64)
  ^bb107:  // pred: ^bb99
    %549 = llvm.add %511, %510  : i64
    llvm.br ^bb97(%549 : i64)
  ^bb108:  // pred: ^bb97
    %550 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %551 = llvm.insertvalue %353, %550[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %552 = llvm.insertvalue %507, %551[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %552 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0", "v4_0", "v3_0", "v2_0"], llvm.emit_c_interface, output_names = ["v8_0", "v0_0"]} {
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
    %48 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %48, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %129) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %167 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %168 = llvm.extractvalue %167[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %169 = llvm.extractvalue %167[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %170 = llvm.mlir.constant(2 : i64) : i64
    %171 = llvm.mlir.constant(16 : i64) : i64
    %172 = llvm.call @malloc(%171) : (i64) -> !llvm.ptr<i8>
    %173 = llvm.bitcast %172 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %174 = llvm.mlir.constant(2 : i64) : i64
    %175 = llvm.call @omTensorCreateUntyped(%174) : (i64) -> !llvm.ptr<i8>
    %176 = llvm.mlir.constant(1 : i64) : i64
    %177 = llvm.extractvalue %168[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %178 = llvm.bitcast %177 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %179 = llvm.extractvalue %168[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %180 = llvm.bitcast %179 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%175, %176, %178, %180) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %181 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%175, %181) : (!llvm.ptr<i8>, i64) -> ()
    %182 = llvm.call @omTensorGetShape(%175) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %183 = llvm.call @omTensorGetStrides(%175) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %184 = llvm.mlir.constant(0 : i64) : i64
    %185 = llvm.extractvalue %168[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %186 = llvm.getelementptr %182[%184] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %185, %186 : !llvm.ptr<i64>
    %187 = llvm.extractvalue %168[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %188 = llvm.getelementptr %183[%184] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %187, %188 : !llvm.ptr<i64>
    %189 = llvm.mlir.constant(1 : i64) : i64
    %190 = llvm.extractvalue %168[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %191 = llvm.getelementptr %182[%189] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %190, %191 : !llvm.ptr<i64>
    %192 = llvm.extractvalue %168[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %193 = llvm.getelementptr %183[%189] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %192, %193 : !llvm.ptr<i64>
    %194 = llvm.mlir.constant(0 : i64) : i64
    %195 = llvm.getelementptr %173[%194] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %175, %195 : !llvm.ptr<ptr<i8>>
    %196 = llvm.mlir.constant(4 : i64) : i64
    %197 = llvm.call @omTensorCreateUntyped(%196) : (i64) -> !llvm.ptr<i8>
    %198 = llvm.mlir.constant(1 : i64) : i64
    %199 = llvm.extractvalue %169[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.bitcast %199 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %201 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.bitcast %201 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%197, %198, %200, %202) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %203 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%197, %203) : (!llvm.ptr<i8>, i64) -> ()
    %204 = llvm.call @omTensorGetShape(%197) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %205 = llvm.call @omTensorGetStrides(%197) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %206 = llvm.mlir.constant(0 : i64) : i64
    %207 = llvm.extractvalue %169[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.getelementptr %204[%206] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %207, %208 : !llvm.ptr<i64>
    %209 = llvm.extractvalue %169[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.getelementptr %205[%206] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %209, %210 : !llvm.ptr<i64>
    %211 = llvm.mlir.constant(1 : i64) : i64
    %212 = llvm.extractvalue %169[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.getelementptr %204[%211] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %212, %213 : !llvm.ptr<i64>
    %214 = llvm.extractvalue %169[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.getelementptr %205[%211] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %214, %215 : !llvm.ptr<i64>
    %216 = llvm.mlir.constant(2 : i64) : i64
    %217 = llvm.extractvalue %169[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.getelementptr %204[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %217, %218 : !llvm.ptr<i64>
    %219 = llvm.extractvalue %169[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.getelementptr %205[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %219, %220 : !llvm.ptr<i64>
    %221 = llvm.mlir.constant(3 : i64) : i64
    %222 = llvm.extractvalue %169[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.getelementptr %204[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %222, %223 : !llvm.ptr<i64>
    %224 = llvm.extractvalue %169[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.getelementptr %205[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %224, %225 : !llvm.ptr<i64>
    %226 = llvm.mlir.constant(1 : i64) : i64
    %227 = llvm.getelementptr %173[%226] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %197, %227 : !llvm.ptr<ptr<i8>>
    %228 = llvm.call @omTensorListCreate(%173, %170, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %228 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

