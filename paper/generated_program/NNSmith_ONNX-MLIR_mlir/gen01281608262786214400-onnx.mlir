module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [3 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 3 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 3 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_2(dense<[[[4], [7]]]> : tensor<1x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<1 x i32>>>
  llvm.mlir.global internal constant @constant_1(dense<7> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: !llvm.ptr<i32>, %arg32: !llvm.ptr<i32>, %arg33: i64, %arg34: i64, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v1_0", "v7_0", "v4_0", "v0_0"], llvm.emit_c_interface, output_names = ["v3_0"]} {
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
    %24 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %25 = llvm.insertvalue %arg22, %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.insertvalue %arg23, %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.insertvalue %arg24, %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.insertvalue %arg25, %27[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %29 = llvm.insertvalue %arg28, %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.insertvalue %arg26, %29[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %31 = llvm.insertvalue %arg29, %30[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.insertvalue %arg27, %31[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %33 = llvm.insertvalue %arg30, %32[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %35 = llvm.insertvalue %arg31, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.insertvalue %arg32, %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %37 = llvm.insertvalue %arg33, %36[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %38 = llvm.insertvalue %arg34, %37[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %39 = llvm.insertvalue %arg37, %38[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %40 = llvm.insertvalue %arg35, %39[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %41 = llvm.insertvalue %arg38, %40[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %42 = llvm.insertvalue %arg36, %41[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %43 = llvm.insertvalue %arg39, %42[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<2 x array<1 x i32>>>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<1 x array<2 x array<1 x i32>>>> to !llvm.ptr<i32>
    %58 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %59 = llvm.insertvalue %57, %58[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %60 = llvm.insertvalue %57, %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.insertvalue %61, %60[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.mlir.constant(2 : index) : i64
    %66 = llvm.insertvalue %65, %64[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %67 = llvm.mlir.constant(2 : index) : i64
    %68 = llvm.insertvalue %67, %66[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.insertvalue %71, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.insertvalue %73, %72[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mlir.null : !llvm.ptr<i32>
    %81 = llvm.getelementptr %80[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %82 = llvm.ptrtoint %81 : !llvm.ptr<i32> to i64
    %83 = llvm.mlir.constant(16 : index) : i64
    %84 = llvm.add %82, %83  : i64
    %85 = llvm.call @malloc(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.bitcast %85 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %87 = llvm.ptrtoint %86 : !llvm.ptr<i32> to i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.sub %83, %88  : i64
    %90 = llvm.add %87, %89  : i64
    %91 = llvm.urem %90, %83  : i64
    %92 = llvm.sub %90, %91  : i64
    %93 = llvm.inttoptr %92 : i64 to !llvm.ptr<i32>
    %94 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %95 = llvm.insertvalue %86, %94[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.insertvalue %93, %95[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.insertvalue %97, %96[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %99 = llvm.insertvalue %75, %98[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.insertvalue %76, %99[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %101 = llvm.insertvalue %77, %100[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.insertvalue %76, %101[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %103 = llvm.insertvalue %77, %102[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %104 = llvm.insertvalue %78, %103[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%105 : i64)
  ^bb1(%108: i64):  // 2 preds: ^bb0, ^bb8
    %109 = llvm.icmp "slt" %108, %106 : i64
    llvm.cond_br %109, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%110 : i64)
  ^bb3(%113: i64):  // 2 preds: ^bb2, ^bb7
    %114 = llvm.icmp "slt" %113, %111 : i64
    llvm.cond_br %114, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%115 : i64)
  ^bb5(%118: i64):  // 2 preds: ^bb4, ^bb6
    %119 = llvm.icmp "slt" %118, %116 : i64
    llvm.cond_br %119, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %120 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %121 = llvm.mlir.constant(2 : index) : i64
    %122 = llvm.mul %108, %121  : i64
    %123 = llvm.add %122, %113  : i64
    %124 = llvm.add %123, %118  : i64
    %125 = llvm.getelementptr %120[%124] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %126 = llvm.load %125 : !llvm.ptr<i32>
    %127 = llvm.extractvalue %55[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.getelementptr %127[%118] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %129 = llvm.load %128 : !llvm.ptr<i32>
    %130 = llvm.icmp "slt" %126, %129 : i32
    %131 = llvm.select %130, %126, %129 : i1, i32
    %132 = llvm.extractvalue %104[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %133 = llvm.mlir.constant(2 : index) : i64
    %134 = llvm.mul %108, %133  : i64
    %135 = llvm.add %134, %113  : i64
    %136 = llvm.add %135, %118  : i64
    %137 = llvm.getelementptr %132[%136] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %131, %137 : !llvm.ptr<i32>
    %138 = llvm.add %118, %117  : i64
    llvm.br ^bb5(%138 : i64)
  ^bb7:  // pred: ^bb5
    %139 = llvm.add %113, %112  : i64
    llvm.br ^bb3(%139 : i64)
  ^bb8:  // pred: ^bb3
    %140 = llvm.add %108, %107  : i64
    llvm.br ^bb1(%140 : i64)
  ^bb9:  // pred: ^bb1
    %141 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %142 = llvm.extractvalue %11[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %142, %141[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %143, %144[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.insertvalue %146, %145[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.insertvalue %148, %147[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.mlir.constant(3 : index) : i64
    %151 = llvm.insertvalue %150, %149[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.mlir.constant(3 : index) : i64
    %153 = llvm.insertvalue %152, %151[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.insertvalue %154, %153[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.insertvalue %156, %155[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.insertvalue %158, %157[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.insertvalue %160, %159[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.insertvalue %162, %161[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.mlir.constant(2 : index) : i64
    %165 = llvm.mlir.constant(3 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(6 : index) : i64
    %170 = llvm.mlir.null : !llvm.ptr<i32>
    %171 = llvm.getelementptr %170[%169] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %172 = llvm.ptrtoint %171 : !llvm.ptr<i32> to i64
    %173 = llvm.mlir.constant(16 : index) : i64
    %174 = llvm.add %172, %173  : i64
    %175 = llvm.call @malloc(%174) : (i64) -> !llvm.ptr<i8>
    %176 = llvm.bitcast %175 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %177 = llvm.ptrtoint %176 : !llvm.ptr<i32> to i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.sub %173, %178  : i64
    %180 = llvm.add %177, %179  : i64
    %181 = llvm.urem %180, %173  : i64
    %182 = llvm.sub %180, %181  : i64
    %183 = llvm.inttoptr %182 : i64 to !llvm.ptr<i32>
    %184 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %185 = llvm.insertvalue %176, %184[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.insertvalue %183, %185[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.insertvalue %187, %186[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %164, %188[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %165, %189[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %166, %190[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %167, %191[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %165, %192[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %166, %193[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %167, %194[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %168, %195[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%197 : i64)
  ^bb10(%200: i64):  // 2 preds: ^bb9, ^bb20
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(3 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%202 : i64)
  ^bb12(%205: i64):  // 2 preds: ^bb11, ^bb19
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%207 : i64)
  ^bb14(%210: i64):  // 2 preds: ^bb13, ^bb18
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%212 : i64)
  ^bb16(%215: i64):  // 2 preds: ^bb15, ^bb17
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %217 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.mlir.constant(3 : index) : i64
    %219 = llvm.mul %200, %218  : i64
    %220 = llvm.add %219, %205  : i64
    %221 = llvm.add %220, %210  : i64
    %222 = llvm.add %221, %215  : i64
    %223 = llvm.getelementptr %217[%222] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %224 = llvm.load %223 : !llvm.ptr<i32>
    %225 = llvm.extractvalue %196[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.mlir.constant(3 : index) : i64
    %227 = llvm.mul %200, %226  : i64
    %228 = llvm.add %227, %205  : i64
    %229 = llvm.add %228, %210  : i64
    %230 = llvm.add %229, %215  : i64
    %231 = llvm.getelementptr %225[%230] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %224, %231 : !llvm.ptr<i32>
    %232 = llvm.add %215, %214  : i64
    llvm.br ^bb16(%232 : i64)
  ^bb18:  // pred: ^bb16
    %233 = llvm.add %210, %209  : i64
    llvm.br ^bb14(%233 : i64)
  ^bb19:  // pred: ^bb14
    %234 = llvm.add %205, %204  : i64
    llvm.br ^bb12(%234 : i64)
  ^bb20:  // pred: ^bb12
    %235 = llvm.add %200, %199  : i64
    llvm.br ^bb10(%235 : i64)
  ^bb21:  // pred: ^bb10
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%236 : i64)
  ^bb22(%239: i64):  // 2 preds: ^bb21, ^bb32
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(3 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%241 : i64)
  ^bb24(%244: i64):  // 2 preds: ^bb23, ^bb31
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%246 : i64)
  ^bb26(%249: i64):  // 2 preds: ^bb25, ^bb30
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%251 : i64)
  ^bb28(%254: i64):  // 2 preds: ^bb27, ^bb29
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.add %239, %256  : i64
    %258 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.mlir.constant(3 : index) : i64
    %260 = llvm.mul %239, %259  : i64
    %261 = llvm.add %260, %244  : i64
    %262 = llvm.add %261, %249  : i64
    %263 = llvm.add %262, %254  : i64
    %264 = llvm.getelementptr %258[%263] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %265 = llvm.load %264 : !llvm.ptr<i32>
    %266 = llvm.extractvalue %196[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.mlir.constant(3 : index) : i64
    %268 = llvm.mul %257, %267  : i64
    %269 = llvm.add %268, %244  : i64
    %270 = llvm.add %269, %249  : i64
    %271 = llvm.add %270, %254  : i64
    %272 = llvm.getelementptr %266[%271] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %265, %272 : !llvm.ptr<i32>
    %273 = llvm.add %254, %253  : i64
    llvm.br ^bb28(%273 : i64)
  ^bb30:  // pred: ^bb28
    %274 = llvm.add %249, %248  : i64
    llvm.br ^bb26(%274 : i64)
  ^bb31:  // pred: ^bb26
    %275 = llvm.add %244, %243  : i64
    llvm.br ^bb24(%275 : i64)
  ^bb32:  // pred: ^bb24
    %276 = llvm.add %239, %238  : i64
    llvm.br ^bb22(%276 : i64)
  ^bb33:  // pred: ^bb22
    %277 = llvm.mlir.constant(3 : index) : i64
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(6 : index) : i64
    %282 = llvm.mlir.null : !llvm.ptr<i32>
    %283 = llvm.getelementptr %282[%281] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %284 = llvm.ptrtoint %283 : !llvm.ptr<i32> to i64
    %285 = llvm.mlir.constant(16 : index) : i64
    %286 = llvm.add %284, %285  : i64
    %287 = llvm.call @malloc(%286) : (i64) -> !llvm.ptr<i8>
    %288 = llvm.bitcast %287 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %289 = llvm.ptrtoint %288 : !llvm.ptr<i32> to i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.sub %285, %290  : i64
    %292 = llvm.add %289, %291  : i64
    %293 = llvm.urem %292, %285  : i64
    %294 = llvm.sub %292, %293  : i64
    %295 = llvm.inttoptr %294 : i64 to !llvm.ptr<i32>
    %296 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %297 = llvm.insertvalue %288, %296[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %298 = llvm.insertvalue %295, %297[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %299 = llvm.mlir.constant(0 : index) : i64
    %300 = llvm.insertvalue %299, %298[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %301 = llvm.insertvalue %277, %300[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %302 = llvm.insertvalue %278, %301[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %303 = llvm.insertvalue %279, %302[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %304 = llvm.insertvalue %278, %303[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %305 = llvm.insertvalue %279, %304[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %306 = llvm.insertvalue %280, %305[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%307 : i64)
  ^bb34(%310: i64):  // 2 preds: ^bb33, ^bb41
    %311 = llvm.icmp "slt" %310, %308 : i64
    llvm.cond_br %311, ^bb35, ^bb42
  ^bb35:  // pred: ^bb34
    %312 = llvm.mlir.constant(0 : index) : i64
    %313 = llvm.mlir.constant(2 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%312 : i64)
  ^bb36(%315: i64):  // 2 preds: ^bb35, ^bb40
    %316 = llvm.icmp "slt" %315, %313 : i64
    llvm.cond_br %316, ^bb37, ^bb41
  ^bb37:  // pred: ^bb36
    %317 = llvm.mlir.constant(0 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%317 : i64)
  ^bb38(%320: i64):  // 2 preds: ^bb37, ^bb39
    %321 = llvm.icmp "slt" %320, %318 : i64
    llvm.cond_br %321, ^bb39, ^bb40
  ^bb39:  // pred: ^bb38
    %322 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %323 = llvm.mlir.constant(2 : index) : i64
    %324 = llvm.mul %310, %323  : i64
    %325 = llvm.add %324, %315  : i64
    %326 = llvm.add %325, %320  : i64
    %327 = llvm.getelementptr %322[%326] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %328 = llvm.load %327 : !llvm.ptr<i32>
    %329 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %330 = llvm.mlir.constant(2 : index) : i64
    %331 = llvm.mul %310, %330  : i64
    %332 = llvm.add %331, %315  : i64
    %333 = llvm.add %332, %320  : i64
    %334 = llvm.getelementptr %329[%333] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %328, %334 : !llvm.ptr<i32>
    %335 = llvm.add %320, %319  : i64
    llvm.br ^bb38(%335 : i64)
  ^bb40:  // pred: ^bb38
    %336 = llvm.add %315, %314  : i64
    llvm.br ^bb36(%336 : i64)
  ^bb41:  // pred: ^bb36
    %337 = llvm.add %310, %309  : i64
    llvm.br ^bb34(%337 : i64)
  ^bb42:  // pred: ^bb34
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%338 : i64)
  ^bb43(%341: i64):  // 2 preds: ^bb42, ^bb50
    %342 = llvm.icmp "slt" %341, %339 : i64
    llvm.cond_br %342, ^bb44, ^bb51
  ^bb44:  // pred: ^bb43
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%343 : i64)
  ^bb45(%346: i64):  // 2 preds: ^bb44, ^bb49
    %347 = llvm.icmp "slt" %346, %344 : i64
    llvm.cond_br %347, ^bb46, ^bb50
  ^bb46:  // pred: ^bb45
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%348 : i64)
  ^bb47(%351: i64):  // 2 preds: ^bb46, ^bb48
    %352 = llvm.icmp "slt" %351, %349 : i64
    llvm.cond_br %352, ^bb48, ^bb49
  ^bb48:  // pred: ^bb47
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.add %341, %353  : i64
    %355 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %356 = llvm.mlir.constant(2 : index) : i64
    %357 = llvm.mul %341, %356  : i64
    %358 = llvm.add %357, %346  : i64
    %359 = llvm.add %358, %351  : i64
    %360 = llvm.getelementptr %355[%359] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %361 = llvm.load %360 : !llvm.ptr<i32>
    %362 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mul %354, %363  : i64
    %365 = llvm.add %364, %346  : i64
    %366 = llvm.add %365, %351  : i64
    %367 = llvm.getelementptr %362[%366] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %361, %367 : !llvm.ptr<i32>
    %368 = llvm.add %351, %350  : i64
    llvm.br ^bb47(%368 : i64)
  ^bb49:  // pred: ^bb47
    %369 = llvm.add %346, %345  : i64
    llvm.br ^bb45(%369 : i64)
  ^bb50:  // pred: ^bb45
    %370 = llvm.add %341, %340  : i64
    llvm.br ^bb43(%370 : i64)
  ^bb51:  // pred: ^bb43
    %371 = llvm.mlir.constant(0 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%371 : i64)
  ^bb52(%374: i64):  // 2 preds: ^bb51, ^bb59
    %375 = llvm.icmp "slt" %374, %372 : i64
    llvm.cond_br %375, ^bb53, ^bb60
  ^bb53:  // pred: ^bb52
    %376 = llvm.mlir.constant(0 : index) : i64
    %377 = llvm.mlir.constant(2 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%376 : i64)
  ^bb54(%379: i64):  // 2 preds: ^bb53, ^bb58
    %380 = llvm.icmp "slt" %379, %377 : i64
    llvm.cond_br %380, ^bb55, ^bb59
  ^bb55:  // pred: ^bb54
    %381 = llvm.mlir.constant(0 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%381 : i64)
  ^bb56(%384: i64):  // 2 preds: ^bb55, ^bb57
    %385 = llvm.icmp "slt" %384, %382 : i64
    llvm.cond_br %385, ^bb57, ^bb58
  ^bb57:  // pred: ^bb56
    %386 = llvm.mlir.constant(2 : index) : i64
    %387 = llvm.add %374, %386  : i64
    %388 = llvm.extractvalue %104[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %389 = llvm.mlir.constant(2 : index) : i64
    %390 = llvm.mul %374, %389  : i64
    %391 = llvm.add %390, %379  : i64
    %392 = llvm.add %391, %384  : i64
    %393 = llvm.getelementptr %388[%392] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %394 = llvm.load %393 : !llvm.ptr<i32>
    %395 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %396 = llvm.mlir.constant(2 : index) : i64
    %397 = llvm.mul %387, %396  : i64
    %398 = llvm.add %397, %379  : i64
    %399 = llvm.add %398, %384  : i64
    %400 = llvm.getelementptr %395[%399] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %394, %400 : !llvm.ptr<i32>
    %401 = llvm.add %384, %383  : i64
    llvm.br ^bb56(%401 : i64)
  ^bb58:  // pred: ^bb56
    %402 = llvm.add %379, %378  : i64
    llvm.br ^bb54(%402 : i64)
  ^bb59:  // pred: ^bb54
    %403 = llvm.add %374, %373  : i64
    llvm.br ^bb52(%403 : i64)
  ^bb60:  // pred: ^bb52
    %404 = llvm.mlir.constant(2 : index) : i64
    %405 = llvm.mlir.constant(3 : index) : i64
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.mlir.constant(6 : index) : i64
    %410 = llvm.mlir.constant(12 : index) : i64
    %411 = llvm.mlir.null : !llvm.ptr<i32>
    %412 = llvm.getelementptr %411[%410] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %413 = llvm.ptrtoint %412 : !llvm.ptr<i32> to i64
    %414 = llvm.mlir.constant(16 : index) : i64
    %415 = llvm.add %413, %414  : i64
    %416 = llvm.call @malloc(%415) : (i64) -> !llvm.ptr<i8>
    %417 = llvm.bitcast %416 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %418 = llvm.ptrtoint %417 : !llvm.ptr<i32> to i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.sub %414, %419  : i64
    %421 = llvm.add %418, %420  : i64
    %422 = llvm.urem %421, %414  : i64
    %423 = llvm.sub %421, %422  : i64
    %424 = llvm.inttoptr %423 : i64 to !llvm.ptr<i32>
    %425 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %426 = llvm.insertvalue %417, %425[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.insertvalue %424, %426[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.insertvalue %428, %427[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.insertvalue %404, %429[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.insertvalue %405, %430[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %406, %431[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %407, %432[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %409, %433[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %406, %434[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %407, %435[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %408, %436[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.mlir.constant(2 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%438 : i64)
  ^bb61(%441: i64):  // 2 preds: ^bb60, ^bb71
    %442 = llvm.icmp "slt" %441, %439 : i64
    llvm.cond_br %442, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %443 = llvm.mlir.constant(0 : index) : i64
    %444 = llvm.mlir.constant(3 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%443 : i64)
  ^bb63(%446: i64):  // 2 preds: ^bb62, ^bb70
    %447 = llvm.icmp "slt" %446, %444 : i64
    llvm.cond_br %447, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %448 = llvm.mlir.constant(0 : index) : i64
    %449 = llvm.mlir.constant(2 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%448 : i64)
  ^bb65(%451: i64):  // 2 preds: ^bb64, ^bb69
    %452 = llvm.icmp "slt" %451, %449 : i64
    llvm.cond_br %452, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %453 = llvm.mlir.constant(0 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%453 : i64)
  ^bb67(%456: i64):  // 2 preds: ^bb66, ^bb68
    %457 = llvm.icmp "slt" %456, %454 : i64
    llvm.cond_br %457, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %458 = llvm.extractvalue %196[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.mlir.constant(3 : index) : i64
    %460 = llvm.mul %441, %459  : i64
    %461 = llvm.add %460, %446  : i64
    %462 = llvm.add %461, %44  : i64
    %463 = llvm.add %462, %456  : i64
    %464 = llvm.getelementptr %458[%463] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %465 = llvm.load %464 : !llvm.ptr<i32>
    %466 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %467 = llvm.mlir.constant(2 : index) : i64
    %468 = llvm.mul %446, %467  : i64
    %469 = llvm.add %468, %451  : i64
    %470 = llvm.add %469, %456  : i64
    %471 = llvm.getelementptr %466[%470] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %472 = llvm.load %471 : !llvm.ptr<i32>
    %473 = llvm.icmp "sgt" %465, %472 : i32
    %474 = llvm.select %473, %465, %472 : i1, i32
    %475 = llvm.extractvalue %437[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.mlir.constant(6 : index) : i64
    %477 = llvm.mul %441, %476  : i64
    %478 = llvm.mlir.constant(2 : index) : i64
    %479 = llvm.mul %446, %478  : i64
    %480 = llvm.add %477, %479  : i64
    %481 = llvm.add %480, %451  : i64
    %482 = llvm.add %481, %456  : i64
    %483 = llvm.getelementptr %475[%482] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %474, %483 : !llvm.ptr<i32>
    %484 = llvm.add %456, %455  : i64
    llvm.br ^bb67(%484 : i64)
  ^bb69:  // pred: ^bb67
    %485 = llvm.add %451, %450  : i64
    llvm.br ^bb65(%485 : i64)
  ^bb70:  // pred: ^bb65
    %486 = llvm.add %446, %445  : i64
    llvm.br ^bb63(%486 : i64)
  ^bb71:  // pred: ^bb63
    %487 = llvm.add %441, %440  : i64
    llvm.br ^bb61(%487 : i64)
  ^bb72:  // pred: ^bb61
    llvm.return %437 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v1_0", "v7_0", "v4_0", "v0_0"], llvm.emit_c_interface, output_names = ["v3_0"]} {
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
    %24 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %25 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.extractvalue %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %29 = llvm.extractvalue %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.extractvalue %24[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %31 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.extractvalue %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %33 = llvm.extractvalue %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %35 = llvm.extractvalue %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %37 = llvm.extractvalue %34[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %38 = llvm.extractvalue %34[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %39 = llvm.extractvalue %34[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %40 = llvm.extractvalue %34[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %41 = llvm.extractvalue %34[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %42 = llvm.extractvalue %34[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %43 = llvm.extractvalue %34[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %44 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %35, %36, %37, %38, %39, %40, %41, %42, %43) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %44, %arg0 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %88 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %89 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %90 = llvm.call @omTensorGetDataPtr(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %92 = llvm.insertvalue %91, %89[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %93 = llvm.insertvalue %91, %92[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.insertvalue %94, %93[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.call @omTensorGetShape(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %97 = llvm.call @omTensorGetStrides(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %98 = llvm.mlir.constant(0 : i64) : i64
    %99 = llvm.getelementptr %96[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %95[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %97[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.getelementptr %96[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.insertvalue %107, %104[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.getelementptr %97[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.insertvalue %110, %108[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.getelementptr %96[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %114 = llvm.load %113 : !llvm.ptr<i64>
    %115 = llvm.insertvalue %114, %111[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %116 = llvm.getelementptr %97[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %117 = llvm.load %116 : !llvm.ptr<i64>
    %118 = llvm.insertvalue %117, %115[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %118, %88 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %119 = llvm.mlir.constant(3 : i64) : i64
    %120 = llvm.getelementptr %0[%119] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %121 = llvm.load %120 : !llvm.ptr<ptr<i8>>
    %122 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %123 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %124 = llvm.call @omTensorGetDataPtr(%121) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %125 = llvm.bitcast %124 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %126 = llvm.insertvalue %125, %123[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %127 = llvm.insertvalue %125, %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %128 = llvm.mlir.constant(0 : i64) : i64
    %129 = llvm.insertvalue %128, %127[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.call @omTensorGetShape(%121) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %131 = llvm.call @omTensorGetStrides(%121) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %132 = llvm.mlir.constant(0 : i64) : i64
    %133 = llvm.getelementptr %130[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %134 = llvm.load %133 : !llvm.ptr<i64>
    %135 = llvm.insertvalue %134, %129[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %136 = llvm.getelementptr %131[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %137 = llvm.load %136 : !llvm.ptr<i64>
    %138 = llvm.insertvalue %137, %135[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.mlir.constant(1 : i64) : i64
    %140 = llvm.getelementptr %130[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %141 = llvm.load %140 : !llvm.ptr<i64>
    %142 = llvm.insertvalue %141, %138[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %143 = llvm.getelementptr %131[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %144 = llvm.load %143 : !llvm.ptr<i64>
    %145 = llvm.insertvalue %144, %142[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %146 = llvm.mlir.constant(2 : i64) : i64
    %147 = llvm.getelementptr %130[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %148 = llvm.load %147 : !llvm.ptr<i64>
    %149 = llvm.insertvalue %148, %145[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %150 = llvm.getelementptr %131[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %151 = llvm.load %150 : !llvm.ptr<i64>
    %152 = llvm.insertvalue %151, %149[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %152, %122 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %122) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %153 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.mlir.constant(8 : i64) : i64
    %156 = llvm.call @malloc(%155) : (i64) -> !llvm.ptr<i8>
    %157 = llvm.bitcast %156 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %158 = llvm.mlir.constant(4 : i64) : i64
    %159 = llvm.call @omTensorCreateUntyped(%158) : (i64) -> !llvm.ptr<i8>
    %160 = llvm.mlir.constant(1 : i64) : i64
    %161 = llvm.extractvalue %153[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.bitcast %161 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %163 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.bitcast %163 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%159, %160, %162, %164) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %165 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%159, %165) : (!llvm.ptr<i8>, i64) -> ()
    %166 = llvm.call @omTensorGetShape(%159) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %167 = llvm.call @omTensorGetStrides(%159) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %168 = llvm.mlir.constant(0 : i64) : i64
    %169 = llvm.extractvalue %153[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.getelementptr %166[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %169, %170 : !llvm.ptr<i64>
    %171 = llvm.extractvalue %153[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.getelementptr %167[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %171, %172 : !llvm.ptr<i64>
    %173 = llvm.mlir.constant(1 : i64) : i64
    %174 = llvm.extractvalue %153[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.getelementptr %166[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %174, %175 : !llvm.ptr<i64>
    %176 = llvm.extractvalue %153[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.getelementptr %167[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %176, %177 : !llvm.ptr<i64>
    %178 = llvm.mlir.constant(2 : i64) : i64
    %179 = llvm.extractvalue %153[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.getelementptr %166[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %179, %180 : !llvm.ptr<i64>
    %181 = llvm.extractvalue %153[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.getelementptr %167[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %181, %182 : !llvm.ptr<i64>
    %183 = llvm.mlir.constant(3 : i64) : i64
    %184 = llvm.extractvalue %153[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.getelementptr %166[%183] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %184, %185 : !llvm.ptr<i64>
    %186 = llvm.extractvalue %153[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.getelementptr %167[%183] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %186, %187 : !llvm.ptr<i64>
    %188 = llvm.mlir.constant(0 : i64) : i64
    %189 = llvm.getelementptr %157[%188] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %159, %189 : !llvm.ptr<ptr<i8>>
    %190 = llvm.call @omTensorListCreate(%157, %154, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %190 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<274 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<274 x i8>> to !llvm.ptr<i8>
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

