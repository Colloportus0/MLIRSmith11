module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [4 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [4 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<3> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr<i32>, %arg34: !llvm.ptr<i32>, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> attributes {input_names = ["v9_0", "v8_0", "v7_0", "v4_0"], llvm.emit_c_interface, output_names = ["v1_0"]} {
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
    %48 = llvm.mlir.constant(2147483647 : i32) : i32
    %49 = llvm.mlir.constant(0 : i32) : i32
    %50 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %51 = llvm.bitcast %50 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %53 = llvm.insertvalue %51, %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.insertvalue %65, %64[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.insertvalue %71, %70[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(4 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.null : !llvm.ptr<i32>
    %79 = llvm.getelementptr %78[%73] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %80 = llvm.ptrtoint %79 : !llvm.ptr<i32> to i64
    %81 = llvm.mlir.constant(16 : index) : i64
    %82 = llvm.add %80, %81  : i64
    %83 = llvm.call @malloc(%82) : (i64) -> !llvm.ptr<i8>
    %84 = llvm.bitcast %83 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %85 = llvm.ptrtoint %84 : !llvm.ptr<i32> to i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.sub %81, %86  : i64
    %88 = llvm.add %85, %87  : i64
    %89 = llvm.urem %88, %81  : i64
    %90 = llvm.sub %88, %89  : i64
    %91 = llvm.inttoptr %90 : i64 to !llvm.ptr<i32>
    %92 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %93 = llvm.insertvalue %84, %92[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %91, %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.insertvalue %95, %94[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %73, %96[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %74, %97[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %75, %98[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %76, %99[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %74, %100[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %75, %101[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %76, %102[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %77, %103[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%105 : i64)
  ^bb1(%108: i64):  // 2 preds: ^bb0, ^bb11
    %109 = llvm.icmp "slt" %108, %106 : i64
    llvm.cond_br %109, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%110 : i64)
  ^bb3(%113: i64):  // 2 preds: ^bb2, ^bb10
    %114 = llvm.icmp "slt" %113, %111 : i64
    llvm.cond_br %114, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%115 : i64)
  ^bb5(%118: i64):  // 2 preds: ^bb4, ^bb9
    %119 = llvm.icmp "slt" %118, %116 : i64
    llvm.cond_br %119, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%120 : i64)
  ^bb7(%123: i64):  // 2 preds: ^bb6, ^bb8
    %124 = llvm.icmp "slt" %123, %121 : i64
    llvm.cond_br %124, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %125 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.add %108, %113  : i64
    %127 = llvm.add %126, %118  : i64
    %128 = llvm.add %127, %123  : i64
    %129 = llvm.getelementptr %125[%128] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %130 = llvm.load %129 : !llvm.ptr<i32>
    %131 = llvm.extractvalue %104[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.add %108, %113  : i64
    %133 = llvm.add %132, %118  : i64
    %134 = llvm.add %133, %123  : i64
    %135 = llvm.getelementptr %131[%134] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %130, %135 : !llvm.ptr<i32>
    %136 = llvm.add %123, %122  : i64
    llvm.br ^bb7(%136 : i64)
  ^bb9:  // pred: ^bb7
    %137 = llvm.add %118, %117  : i64
    llvm.br ^bb5(%137 : i64)
  ^bb10:  // pred: ^bb5
    %138 = llvm.add %113, %112  : i64
    llvm.br ^bb3(%138 : i64)
  ^bb11:  // pred: ^bb3
    %139 = llvm.add %108, %107  : i64
    llvm.br ^bb1(%139 : i64)
  ^bb12:  // pred: ^bb1
    %140 = llvm.mlir.constant(0 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%140 : i64)
  ^bb13(%143: i64):  // 2 preds: ^bb12, ^bb23
    %144 = llvm.icmp "slt" %143, %141 : i64
    llvm.cond_br %144, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%145 : i64)
  ^bb15(%148: i64):  // 2 preds: ^bb14, ^bb22
    %149 = llvm.icmp "slt" %148, %146 : i64
    llvm.cond_br %149, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%150 : i64)
  ^bb17(%153: i64):  // 2 preds: ^bb16, ^bb21
    %154 = llvm.icmp "slt" %153, %151 : i64
    llvm.cond_br %154, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%155 : i64)
  ^bb19(%158: i64):  // 2 preds: ^bb18, ^bb20
    %159 = llvm.icmp "slt" %158, %156 : i64
    llvm.cond_br %159, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.add %143, %160  : i64
    %162 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.add %143, %148  : i64
    %164 = llvm.add %163, %153  : i64
    %165 = llvm.add %164, %158  : i64
    %166 = llvm.getelementptr %162[%165] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %167 = llvm.load %166 : !llvm.ptr<i32>
    %168 = llvm.extractvalue %104[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.add %161, %148  : i64
    %170 = llvm.add %169, %153  : i64
    %171 = llvm.add %170, %158  : i64
    %172 = llvm.getelementptr %168[%171] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %167, %172 : !llvm.ptr<i32>
    %173 = llvm.add %158, %157  : i64
    llvm.br ^bb19(%173 : i64)
  ^bb21:  // pred: ^bb19
    %174 = llvm.add %153, %152  : i64
    llvm.br ^bb17(%174 : i64)
  ^bb22:  // pred: ^bb17
    %175 = llvm.add %148, %147  : i64
    llvm.br ^bb15(%175 : i64)
  ^bb23:  // pred: ^bb15
    %176 = llvm.add %143, %142  : i64
    llvm.br ^bb13(%176 : i64)
  ^bb24:  // pred: ^bb13
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%177 : i64)
  ^bb25(%180: i64):  // 2 preds: ^bb24, ^bb35
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%182 : i64)
  ^bb27(%185: i64):  // 2 preds: ^bb26, ^bb34
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%187 : i64)
  ^bb29(%190: i64):  // 2 preds: ^bb28, ^bb33
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%192 : i64)
  ^bb31(%195: i64):  // 2 preds: ^bb30, ^bb32
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %197 = llvm.mlir.constant(2 : index) : i64
    %198 = llvm.add %180, %197  : i64
    %199 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.add %180, %185  : i64
    %201 = llvm.add %200, %190  : i64
    %202 = llvm.add %201, %195  : i64
    %203 = llvm.getelementptr %199[%202] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %204 = llvm.load %203 : !llvm.ptr<i32>
    %205 = llvm.extractvalue %104[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.add %198, %185  : i64
    %207 = llvm.add %206, %190  : i64
    %208 = llvm.add %207, %195  : i64
    %209 = llvm.getelementptr %205[%208] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %204, %209 : !llvm.ptr<i32>
    %210 = llvm.add %195, %194  : i64
    llvm.br ^bb31(%210 : i64)
  ^bb33:  // pred: ^bb31
    %211 = llvm.add %190, %189  : i64
    llvm.br ^bb29(%211 : i64)
  ^bb34:  // pred: ^bb29
    %212 = llvm.add %185, %184  : i64
    llvm.br ^bb27(%212 : i64)
  ^bb35:  // pred: ^bb27
    %213 = llvm.add %180, %179  : i64
    llvm.br ^bb25(%213 : i64)
  ^bb36:  // pred: ^bb25
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%214 : i64)
  ^bb37(%217: i64):  // 2 preds: ^bb36, ^bb47
    %218 = llvm.icmp "slt" %217, %215 : i64
    llvm.cond_br %218, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%219 : i64)
  ^bb39(%222: i64):  // 2 preds: ^bb38, ^bb46
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%224 : i64)
  ^bb41(%227: i64):  // 2 preds: ^bb40, ^bb45
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%229 : i64)
  ^bb43(%232: i64):  // 2 preds: ^bb42, ^bb44
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %234 = llvm.mlir.constant(3 : index) : i64
    %235 = llvm.add %217, %234  : i64
    %236 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.add %217, %222  : i64
    %238 = llvm.add %237, %227  : i64
    %239 = llvm.add %238, %232  : i64
    %240 = llvm.getelementptr %236[%239] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %241 = llvm.load %240 : !llvm.ptr<i32>
    %242 = llvm.extractvalue %104[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.add %235, %222  : i64
    %244 = llvm.add %243, %227  : i64
    %245 = llvm.add %244, %232  : i64
    %246 = llvm.getelementptr %242[%245] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %241, %246 : !llvm.ptr<i32>
    %247 = llvm.add %232, %231  : i64
    llvm.br ^bb43(%247 : i64)
  ^bb45:  // pred: ^bb43
    %248 = llvm.add %227, %226  : i64
    llvm.br ^bb41(%248 : i64)
  ^bb46:  // pred: ^bb41
    %249 = llvm.add %222, %221  : i64
    llvm.br ^bb39(%249 : i64)
  ^bb47:  // pred: ^bb39
    %250 = llvm.add %217, %216  : i64
    llvm.br ^bb37(%250 : i64)
  ^bb48:  // pred: ^bb37
    %251 = llvm.mlir.constant(4 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(2 : index) : i64
    %257 = llvm.mlir.constant(2 : index) : i64
    %258 = llvm.mlir.constant(8 : index) : i64
    %259 = llvm.mlir.null : !llvm.ptr<i32>
    %260 = llvm.getelementptr %259[%258] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %261 = llvm.ptrtoint %260 : !llvm.ptr<i32> to i64
    %262 = llvm.mlir.constant(16 : index) : i64
    %263 = llvm.add %261, %262  : i64
    %264 = llvm.call @malloc(%263) : (i64) -> !llvm.ptr<i8>
    %265 = llvm.bitcast %264 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %266 = llvm.ptrtoint %265 : !llvm.ptr<i32> to i64
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.sub %262, %267  : i64
    %269 = llvm.add %266, %268  : i64
    %270 = llvm.urem %269, %262  : i64
    %271 = llvm.sub %269, %270  : i64
    %272 = llvm.inttoptr %271 : i64 to !llvm.ptr<i32>
    %273 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %274 = llvm.insertvalue %265, %273[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %272, %274[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.mlir.constant(0 : index) : i64
    %277 = llvm.insertvalue %276, %275[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %251, %277[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %252, %278[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %253, %279[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %254, %280[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %257, %281[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.insertvalue %256, %282[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.insertvalue %254, %283[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.insertvalue %255, %284[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.mlir.constant(0 : index) : i64
    %287 = llvm.mlir.constant(4 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%286 : i64)
  ^bb49(%289: i64):  // 2 preds: ^bb48, ^bb59
    %290 = llvm.icmp "slt" %289, %287 : i64
    llvm.cond_br %290, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %291 = llvm.mlir.constant(0 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%291 : i64)
  ^bb51(%294: i64):  // 2 preds: ^bb50, ^bb58
    %295 = llvm.icmp "slt" %294, %292 : i64
    llvm.cond_br %295, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%296 : i64)
  ^bb53(%299: i64):  // 2 preds: ^bb52, ^bb57
    %300 = llvm.icmp "slt" %299, %297 : i64
    llvm.cond_br %300, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %301 = llvm.mlir.constant(0 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%301 : i64)
  ^bb55(%304: i64):  // 2 preds: ^bb54, ^bb56
    %305 = llvm.icmp "slt" %304, %302 : i64
    llvm.cond_br %305, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %306 = llvm.extractvalue %104[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.add %289, %294  : i64
    %308 = llvm.add %307, %299  : i64
    %309 = llvm.add %308, %304  : i64
    %310 = llvm.getelementptr %306[%309] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %311 = llvm.load %310 : !llvm.ptr<i32>
    %312 = llvm.extractvalue %285[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.mlir.constant(2 : index) : i64
    %314 = llvm.mul %289, %313  : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mul %294, %315  : i64
    %317 = llvm.add %314, %316  : i64
    %318 = llvm.mlir.constant(2 : index) : i64
    %319 = llvm.mul %299, %318  : i64
    %320 = llvm.add %317, %319  : i64
    %321 = llvm.add %320, %304  : i64
    %322 = llvm.getelementptr %312[%321] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %311, %322 : !llvm.ptr<i32>
    %323 = llvm.add %304, %303  : i64
    llvm.br ^bb55(%323 : i64)
  ^bb57:  // pred: ^bb55
    %324 = llvm.add %299, %298  : i64
    llvm.br ^bb53(%324 : i64)
  ^bb58:  // pred: ^bb53
    %325 = llvm.add %294, %293  : i64
    llvm.br ^bb51(%325 : i64)
  ^bb59:  // pred: ^bb51
    %326 = llvm.add %289, %288  : i64
    llvm.br ^bb49(%326 : i64)
  ^bb60:  // pred: ^bb49
    %327 = llvm.mlir.constant(0 : index) : i64
    %328 = llvm.mlir.constant(4 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%327 : i64)
  ^bb61(%330: i64):  // 2 preds: ^bb60, ^bb71
    %331 = llvm.icmp "slt" %330, %328 : i64
    llvm.cond_br %331, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%332 : i64)
  ^bb63(%335: i64):  // 2 preds: ^bb62, ^bb70
    %336 = llvm.icmp "slt" %335, %333 : i64
    llvm.cond_br %336, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%337 : i64)
  ^bb65(%340: i64):  // 2 preds: ^bb64, ^bb69
    %341 = llvm.icmp "slt" %340, %338 : i64
    llvm.cond_br %341, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%342 : i64)
  ^bb67(%345: i64):  // 2 preds: ^bb66, ^bb68
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.add %345, %347  : i64
    %349 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.add %330, %335  : i64
    %351 = llvm.add %350, %340  : i64
    %352 = llvm.add %351, %345  : i64
    %353 = llvm.getelementptr %349[%352] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %354 = llvm.load %353 : !llvm.ptr<i32>
    %355 = llvm.extractvalue %285[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.mlir.constant(2 : index) : i64
    %357 = llvm.mul %330, %356  : i64
    %358 = llvm.mlir.constant(2 : index) : i64
    %359 = llvm.mul %335, %358  : i64
    %360 = llvm.add %357, %359  : i64
    %361 = llvm.mlir.constant(2 : index) : i64
    %362 = llvm.mul %340, %361  : i64
    %363 = llvm.add %360, %362  : i64
    %364 = llvm.add %363, %348  : i64
    %365 = llvm.getelementptr %355[%364] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %354, %365 : !llvm.ptr<i32>
    %366 = llvm.add %345, %344  : i64
    llvm.br ^bb67(%366 : i64)
  ^bb69:  // pred: ^bb67
    %367 = llvm.add %340, %339  : i64
    llvm.br ^bb65(%367 : i64)
  ^bb70:  // pred: ^bb65
    %368 = llvm.add %335, %334  : i64
    llvm.br ^bb63(%368 : i64)
  ^bb71:  // pred: ^bb63
    %369 = llvm.add %330, %329  : i64
    llvm.br ^bb61(%369 : i64)
  ^bb72:  // pred: ^bb61
    %370 = llvm.mlir.constant(4 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.mlir.constant(2 : index) : i64
    %376 = llvm.mlir.constant(2 : index) : i64
    %377 = llvm.mlir.constant(8 : index) : i64
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
    %406 = llvm.mlir.constant(4 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%405 : i64)
  ^bb73(%408: i64):  // 2 preds: ^bb72, ^bb83
    %409 = llvm.icmp "slt" %408, %406 : i64
    llvm.cond_br %409, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%410 : i64)
  ^bb75(%413: i64):  // 2 preds: ^bb74, ^bb82
    %414 = llvm.icmp "slt" %413, %411 : i64
    llvm.cond_br %414, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%415 : i64)
  ^bb77(%418: i64):  // 2 preds: ^bb76, ^bb81
    %419 = llvm.icmp "slt" %418, %416 : i64
    llvm.cond_br %419, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %420 = llvm.mlir.constant(0 : index) : i64
    %421 = llvm.mlir.constant(2 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%420 : i64)
  ^bb79(%423: i64):  // 2 preds: ^bb78, ^bb80
    %424 = llvm.icmp "slt" %423, %421 : i64
    llvm.cond_br %424, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %425 = llvm.extractvalue %285[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.mlir.constant(2 : index) : i64
    %427 = llvm.mul %408, %426  : i64
    %428 = llvm.mlir.constant(2 : index) : i64
    %429 = llvm.mul %413, %428  : i64
    %430 = llvm.add %427, %429  : i64
    %431 = llvm.mlir.constant(2 : index) : i64
    %432 = llvm.mul %418, %431  : i64
    %433 = llvm.add %430, %432  : i64
    %434 = llvm.add %433, %423  : i64
    %435 = llvm.getelementptr %425[%434] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %436 = llvm.load %435 : !llvm.ptr<i32>
    %437 = llvm.extractvalue %404[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.mlir.constant(2 : index) : i64
    %439 = llvm.mul %408, %438  : i64
    %440 = llvm.mlir.constant(2 : index) : i64
    %441 = llvm.mul %413, %440  : i64
    %442 = llvm.add %439, %441  : i64
    %443 = llvm.mlir.constant(2 : index) : i64
    %444 = llvm.mul %418, %443  : i64
    %445 = llvm.add %442, %444  : i64
    %446 = llvm.add %445, %423  : i64
    %447 = llvm.getelementptr %437[%446] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %436, %447 : !llvm.ptr<i32>
    %448 = llvm.add %423, %422  : i64
    llvm.br ^bb79(%448 : i64)
  ^bb81:  // pred: ^bb79
    %449 = llvm.add %418, %417  : i64
    llvm.br ^bb77(%449 : i64)
  ^bb82:  // pred: ^bb77
    %450 = llvm.add %413, %412  : i64
    llvm.br ^bb75(%450 : i64)
  ^bb83:  // pred: ^bb75
    %451 = llvm.add %408, %407  : i64
    llvm.br ^bb73(%451 : i64)
  ^bb84:  // pred: ^bb73
    %452 = llvm.mlir.constant(4 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.mlir.constant(2 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    %457 = llvm.mlir.constant(2 : index) : i64
    %458 = llvm.mlir.constant(2 : index) : i64
    %459 = llvm.mlir.constant(8 : index) : i64
    %460 = llvm.mlir.null : !llvm.ptr<i32>
    %461 = llvm.getelementptr %460[%459] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %462 = llvm.ptrtoint %461 : !llvm.ptr<i32> to i64
    %463 = llvm.mlir.constant(16 : index) : i64
    %464 = llvm.add %462, %463  : i64
    %465 = llvm.call @malloc(%464) : (i64) -> !llvm.ptr<i8>
    %466 = llvm.bitcast %465 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %467 = llvm.ptrtoint %466 : !llvm.ptr<i32> to i64
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.sub %463, %468  : i64
    %470 = llvm.add %467, %469  : i64
    %471 = llvm.urem %470, %463  : i64
    %472 = llvm.sub %470, %471  : i64
    %473 = llvm.inttoptr %472 : i64 to !llvm.ptr<i32>
    %474 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %475 = llvm.insertvalue %466, %474[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %473, %475[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.insertvalue %477, %476[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.insertvalue %452, %478[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.insertvalue %453, %479[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.insertvalue %454, %480[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.insertvalue %455, %481[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.insertvalue %458, %482[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %484 = llvm.insertvalue %457, %483[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %485 = llvm.insertvalue %455, %484[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.insertvalue %456, %485[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %487 = llvm.mlir.constant(0 : index) : i64
    %488 = llvm.mlir.constant(4 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%487 : i64)
  ^bb85(%490: i64):  // 2 preds: ^bb84, ^bb95
    %491 = llvm.icmp "slt" %490, %488 : i64
    llvm.cond_br %491, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %492 = llvm.mlir.constant(0 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%492 : i64)
  ^bb87(%495: i64):  // 2 preds: ^bb86, ^bb94
    %496 = llvm.icmp "slt" %495, %493 : i64
    llvm.cond_br %496, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %497 = llvm.mlir.constant(0 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%497 : i64)
  ^bb89(%500: i64):  // 2 preds: ^bb88, ^bb93
    %501 = llvm.icmp "slt" %500, %498 : i64
    llvm.cond_br %501, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %502 = llvm.mlir.constant(0 : index) : i64
    %503 = llvm.mlir.constant(2 : index) : i64
    %504 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%502 : i64)
  ^bb91(%505: i64):  // 2 preds: ^bb90, ^bb92
    %506 = llvm.icmp "slt" %505, %503 : i64
    llvm.cond_br %506, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %507 = llvm.extractvalue %404[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.mlir.constant(2 : index) : i64
    %509 = llvm.mul %490, %508  : i64
    %510 = llvm.mlir.constant(2 : index) : i64
    %511 = llvm.mul %495, %510  : i64
    %512 = llvm.add %509, %511  : i64
    %513 = llvm.mlir.constant(2 : index) : i64
    %514 = llvm.mul %500, %513  : i64
    %515 = llvm.add %512, %514  : i64
    %516 = llvm.add %515, %505  : i64
    %517 = llvm.getelementptr %507[%516] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %518 = llvm.load %517 : !llvm.ptr<i32>
    %519 = llvm.sub %49, %518  : i32
    %520 = llvm.extractvalue %486[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.mlir.constant(2 : index) : i64
    %522 = llvm.mul %490, %521  : i64
    %523 = llvm.mlir.constant(2 : index) : i64
    %524 = llvm.mul %495, %523  : i64
    %525 = llvm.add %522, %524  : i64
    %526 = llvm.mlir.constant(2 : index) : i64
    %527 = llvm.mul %500, %526  : i64
    %528 = llvm.add %525, %527  : i64
    %529 = llvm.add %528, %505  : i64
    %530 = llvm.getelementptr %520[%529] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %519, %530 : !llvm.ptr<i32>
    %531 = llvm.add %505, %504  : i64
    llvm.br ^bb91(%531 : i64)
  ^bb93:  // pred: ^bb91
    %532 = llvm.add %500, %499  : i64
    llvm.br ^bb89(%532 : i64)
  ^bb94:  // pred: ^bb89
    %533 = llvm.add %495, %494  : i64
    llvm.br ^bb87(%533 : i64)
  ^bb95:  // pred: ^bb87
    %534 = llvm.add %490, %489  : i64
    llvm.br ^bb85(%534 : i64)
  ^bb96:  // pred: ^bb85
    %535 = llvm.mlir.constant(4 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    %537 = llvm.mlir.constant(2 : index) : i64
    %538 = llvm.mlir.constant(1 : index) : i64
    %539 = llvm.mlir.constant(2 : index) : i64
    %540 = llvm.mlir.constant(8 : index) : i64
    %541 = llvm.mlir.null : !llvm.ptr<i32>
    %542 = llvm.getelementptr %541[%540] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %543 = llvm.ptrtoint %542 : !llvm.ptr<i32> to i64
    %544 = llvm.mlir.constant(16 : index) : i64
    %545 = llvm.add %543, %544  : i64
    %546 = llvm.call @malloc(%545) : (i64) -> !llvm.ptr<i8>
    %547 = llvm.bitcast %546 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %548 = llvm.ptrtoint %547 : !llvm.ptr<i32> to i64
    %549 = llvm.mlir.constant(1 : index) : i64
    %550 = llvm.sub %544, %549  : i64
    %551 = llvm.add %548, %550  : i64
    %552 = llvm.urem %551, %544  : i64
    %553 = llvm.sub %551, %552  : i64
    %554 = llvm.inttoptr %553 : i64 to !llvm.ptr<i32>
    %555 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %556 = llvm.insertvalue %547, %555[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %557 = llvm.insertvalue %554, %556[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %558 = llvm.mlir.constant(0 : index) : i64
    %559 = llvm.insertvalue %558, %557[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %560 = llvm.insertvalue %535, %559[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %561 = llvm.insertvalue %536, %560[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %562 = llvm.insertvalue %537, %561[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %563 = llvm.insertvalue %539, %562[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %564 = llvm.insertvalue %537, %563[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %565 = llvm.insertvalue %538, %564[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %566 = llvm.mlir.constant(0 : index) : i64
    %567 = llvm.mlir.constant(4 : index) : i64
    %568 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%566 : i64)
  ^bb97(%569: i64):  // 2 preds: ^bb96, ^bb104
    %570 = llvm.icmp "slt" %569, %567 : i64
    llvm.cond_br %570, ^bb98, ^bb105
  ^bb98:  // pred: ^bb97
    %571 = llvm.mlir.constant(0 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%571 : i64)
  ^bb99(%574: i64):  // 2 preds: ^bb98, ^bb103
    %575 = llvm.icmp "slt" %574, %572 : i64
    llvm.cond_br %575, ^bb100, ^bb104
  ^bb100:  // pred: ^bb99
    %576 = llvm.mlir.constant(0 : index) : i64
    %577 = llvm.mlir.constant(2 : index) : i64
    %578 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%576 : i64)
  ^bb101(%579: i64):  // 2 preds: ^bb100, ^bb102
    %580 = llvm.icmp "slt" %579, %577 : i64
    llvm.cond_br %580, ^bb102, ^bb103
  ^bb102:  // pred: ^bb101
    %581 = llvm.extractvalue %565[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %582 = llvm.mlir.constant(2 : index) : i64
    %583 = llvm.mul %569, %582  : i64
    %584 = llvm.mlir.constant(2 : index) : i64
    %585 = llvm.mul %574, %584  : i64
    %586 = llvm.add %583, %585  : i64
    %587 = llvm.add %586, %579  : i64
    %588 = llvm.getelementptr %581[%587] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %48, %588 : !llvm.ptr<i32>
    %589 = llvm.add %579, %578  : i64
    llvm.br ^bb101(%589 : i64)
  ^bb103:  // pred: ^bb101
    %590 = llvm.add %574, %573  : i64
    llvm.br ^bb99(%590 : i64)
  ^bb104:  // pred: ^bb99
    %591 = llvm.add %569, %568  : i64
    llvm.br ^bb97(%591 : i64)
  ^bb105:  // pred: ^bb97
    %592 = llvm.mlir.constant(0 : index) : i64
    %593 = llvm.mlir.constant(4 : index) : i64
    %594 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%592 : i64)
  ^bb106(%595: i64):  // 2 preds: ^bb105, ^bb116
    %596 = llvm.icmp "slt" %595, %593 : i64
    llvm.cond_br %596, ^bb107, ^bb117
  ^bb107:  // pred: ^bb106
    %597 = llvm.mlir.constant(0 : index) : i64
    %598 = llvm.mlir.constant(1 : index) : i64
    %599 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb108(%597 : i64)
  ^bb108(%600: i64):  // 2 preds: ^bb107, ^bb115
    %601 = llvm.icmp "slt" %600, %598 : i64
    llvm.cond_br %601, ^bb109, ^bb116
  ^bb109:  // pred: ^bb108
    %602 = llvm.mlir.constant(0 : index) : i64
    %603 = llvm.mlir.constant(1 : index) : i64
    %604 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb110(%602 : i64)
  ^bb110(%605: i64):  // 2 preds: ^bb109, ^bb114
    %606 = llvm.icmp "slt" %605, %603 : i64
    llvm.cond_br %606, ^bb111, ^bb115
  ^bb111:  // pred: ^bb110
    %607 = llvm.mlir.constant(0 : index) : i64
    %608 = llvm.mlir.constant(2 : index) : i64
    %609 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb112(%607 : i64)
  ^bb112(%610: i64):  // 2 preds: ^bb111, ^bb113
    %611 = llvm.icmp "slt" %610, %608 : i64
    llvm.cond_br %611, ^bb113, ^bb114
  ^bb113:  // pred: ^bb112
    %612 = llvm.extractvalue %486[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.mlir.constant(2 : index) : i64
    %614 = llvm.mul %595, %613  : i64
    %615 = llvm.mlir.constant(2 : index) : i64
    %616 = llvm.mul %600, %615  : i64
    %617 = llvm.add %614, %616  : i64
    %618 = llvm.mlir.constant(2 : index) : i64
    %619 = llvm.mul %605, %618  : i64
    %620 = llvm.add %617, %619  : i64
    %621 = llvm.add %620, %610  : i64
    %622 = llvm.getelementptr %612[%621] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %623 = llvm.load %622 : !llvm.ptr<i32>
    %624 = llvm.extractvalue %565[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %625 = llvm.mlir.constant(2 : index) : i64
    %626 = llvm.mul %595, %625  : i64
    %627 = llvm.mlir.constant(2 : index) : i64
    %628 = llvm.mul %605, %627  : i64
    %629 = llvm.add %626, %628  : i64
    %630 = llvm.add %629, %610  : i64
    %631 = llvm.getelementptr %624[%630] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %632 = llvm.load %631 : !llvm.ptr<i32>
    %633 = llvm.icmp "slt" %632, %623 : i32
    %634 = llvm.select %633, %632, %623 : i1, i32
    %635 = llvm.extractvalue %565[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %636 = llvm.mlir.constant(2 : index) : i64
    %637 = llvm.mul %595, %636  : i64
    %638 = llvm.mlir.constant(2 : index) : i64
    %639 = llvm.mul %605, %638  : i64
    %640 = llvm.add %637, %639  : i64
    %641 = llvm.add %640, %610  : i64
    %642 = llvm.getelementptr %635[%641] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %634, %642 : !llvm.ptr<i32>
    %643 = llvm.add %610, %609  : i64
    llvm.br ^bb112(%643 : i64)
  ^bb114:  // pred: ^bb112
    %644 = llvm.add %605, %604  : i64
    llvm.br ^bb110(%644 : i64)
  ^bb115:  // pred: ^bb110
    %645 = llvm.add %600, %599  : i64
    llvm.br ^bb108(%645 : i64)
  ^bb116:  // pred: ^bb108
    %646 = llvm.add %595, %594  : i64
    llvm.br ^bb106(%646 : i64)
  ^bb117:  // pred: ^bb106
    llvm.return %565 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v9_0", "v8_0", "v7_0", "v4_0"], llvm.emit_c_interface, output_names = ["v1_0"]} {
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
    %48 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    llvm.store %48, %arg0 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %129) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %167 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %168 = llvm.mlir.constant(1 : i64) : i64
    %169 = llvm.mlir.constant(8 : i64) : i64
    %170 = llvm.call @malloc(%169) : (i64) -> !llvm.ptr<i8>
    %171 = llvm.bitcast %170 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %172 = llvm.mlir.constant(3 : i64) : i64
    %173 = llvm.call @omTensorCreateUntyped(%172) : (i64) -> !llvm.ptr<i8>
    %174 = llvm.mlir.constant(1 : i64) : i64
    %175 = llvm.extractvalue %167[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %176 = llvm.bitcast %175 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %177 = llvm.extractvalue %167[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %178 = llvm.bitcast %177 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%173, %174, %176, %178) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %179 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%173, %179) : (!llvm.ptr<i8>, i64) -> ()
    %180 = llvm.call @omTensorGetShape(%173) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %181 = llvm.call @omTensorGetStrides(%173) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %182 = llvm.mlir.constant(0 : i64) : i64
    %183 = llvm.extractvalue %167[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %184 = llvm.getelementptr %180[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %183, %184 : !llvm.ptr<i64>
    %185 = llvm.extractvalue %167[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %186 = llvm.getelementptr %181[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %185, %186 : !llvm.ptr<i64>
    %187 = llvm.mlir.constant(1 : i64) : i64
    %188 = llvm.extractvalue %167[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %189 = llvm.getelementptr %180[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %188, %189 : !llvm.ptr<i64>
    %190 = llvm.extractvalue %167[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %191 = llvm.getelementptr %181[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %190, %191 : !llvm.ptr<i64>
    %192 = llvm.mlir.constant(2 : i64) : i64
    %193 = llvm.extractvalue %167[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %194 = llvm.getelementptr %180[%192] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %193, %194 : !llvm.ptr<i64>
    %195 = llvm.extractvalue %167[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %196 = llvm.getelementptr %181[%192] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %195, %196 : !llvm.ptr<i64>
    %197 = llvm.mlir.constant(0 : i64) : i64
    %198 = llvm.getelementptr %171[%197] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %173, %198 : !llvm.ptr<ptr<i8>>
    %199 = llvm.call @omTensorListCreate(%171, %168, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %199 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<67 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<67 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

