module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 4] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 4] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 4] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<6> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 2, 4]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 2, 4]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0", "v4_0", "v2_0"], llvm.emit_c_interface, output_names = ["v8_0", "v7_0", "v1_0"]} {
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
    %36 = llvm.mlir.constant(1 : i64) : i64
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.mlir.constant(2 : index) : i64
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %41 = llvm.bitcast %40 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %42 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %43 = llvm.insertvalue %41, %42[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.constant(4 : index) : i64
    %48 = llvm.insertvalue %47, %46[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.insertvalue %49, %48[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %52 = llvm.bitcast %51 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %54 = llvm.insertvalue %52, %53[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %58 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %59 = llvm.bitcast %58 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %60 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %61 = llvm.insertvalue %59, %60[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.insertvalue %59, %61[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.insertvalue %63, %62[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.constant(4 : index) : i64
    %66 = llvm.insertvalue %65, %64[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %70 = llvm.bitcast %69 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %71 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %72 = llvm.insertvalue %70, %71[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %70, %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.insertvalue %74, %73[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.insertvalue %82, %81[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.insertvalue %84, %83[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.insertvalue %86, %85[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.insertvalue %88, %87[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.insertvalue %90, %89[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.constant(4 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(4 : index) : i64
    %98 = llvm.mlir.constant(4 : index) : i64
    %99 = llvm.mlir.constant(4 : index) : i64
    %100 = llvm.mlir.null : !llvm.ptr<i32>
    %101 = llvm.getelementptr %100[%99] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %102 = llvm.ptrtoint %101 : !llvm.ptr<i32> to i64
    %103 = llvm.mlir.constant(16 : index) : i64
    %104 = llvm.add %102, %103  : i64
    %105 = llvm.call @malloc(%104) : (i64) -> !llvm.ptr<i8>
    %106 = llvm.bitcast %105 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %107 = llvm.ptrtoint %106 : !llvm.ptr<i32> to i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.sub %103, %108  : i64
    %110 = llvm.add %107, %109  : i64
    %111 = llvm.urem %110, %103  : i64
    %112 = llvm.sub %110, %111  : i64
    %113 = llvm.inttoptr %112 : i64 to !llvm.ptr<i32>
    %114 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %115 = llvm.insertvalue %106, %114[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %113, %115[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.insertvalue %117, %116[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.insertvalue %92, %118[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %93, %119[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.insertvalue %94, %120[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %95, %121[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.insertvalue %98, %122[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.insertvalue %97, %123[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %95, %124[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %96, %125[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%127 : i64)
  ^bb1(%130: i64):  // 2 preds: ^bb0, ^bb11
    %131 = llvm.icmp "slt" %130, %128 : i64
    llvm.cond_br %131, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%132 : i64)
  ^bb3(%135: i64):  // 2 preds: ^bb2, ^bb10
    %136 = llvm.icmp "slt" %135, %133 : i64
    llvm.cond_br %136, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%137 : i64)
  ^bb5(%140: i64):  // 2 preds: ^bb4, ^bb9
    %141 = llvm.icmp "slt" %140, %138 : i64
    llvm.cond_br %141, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%142 : i64)
  ^bb7(%145: i64):  // 2 preds: ^bb6, ^bb8
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %147 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.add %130, %135  : i64
    %149 = llvm.add %148, %140  : i64
    %150 = llvm.add %149, %145  : i64
    %151 = llvm.getelementptr %147[%150] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %152 = llvm.load %151 : !llvm.ptr<i32>
    %153 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.mlir.constant(4 : index) : i64
    %155 = llvm.mul %130, %154  : i64
    %156 = llvm.mlir.constant(4 : index) : i64
    %157 = llvm.mul %135, %156  : i64
    %158 = llvm.add %155, %157  : i64
    %159 = llvm.mlir.constant(4 : index) : i64
    %160 = llvm.mul %140, %159  : i64
    %161 = llvm.add %158, %160  : i64
    %162 = llvm.add %161, %145  : i64
    %163 = llvm.getelementptr %153[%162] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %152, %163 : !llvm.ptr<i32>
    %164 = llvm.add %145, %144  : i64
    llvm.br ^bb7(%164 : i64)
  ^bb9:  // pred: ^bb7
    %165 = llvm.add %140, %139  : i64
    llvm.br ^bb5(%165 : i64)
  ^bb10:  // pred: ^bb5
    %166 = llvm.add %135, %134  : i64
    llvm.br ^bb3(%166 : i64)
  ^bb11:  // pred: ^bb3
    %167 = llvm.add %130, %129  : i64
    llvm.br ^bb1(%167 : i64)
  ^bb12:  // pred: ^bb1
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%168 : i64)
  ^bb13(%171: i64):  // 2 preds: ^bb12, ^bb23
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%173 : i64)
  ^bb15(%176: i64):  // 2 preds: ^bb14, ^bb22
    %177 = llvm.icmp "slt" %176, %174 : i64
    llvm.cond_br %177, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%178 : i64)
  ^bb17(%181: i64):  // 2 preds: ^bb16, ^bb21
    %182 = llvm.icmp "slt" %181, %179 : i64
    llvm.cond_br %182, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%183 : i64)
  ^bb19(%186: i64):  // 2 preds: ^bb18, ^bb20
    %187 = llvm.icmp "slt" %186, %184 : i64
    llvm.cond_br %187, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.add %186, %188  : i64
    %190 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.add %171, %176  : i64
    %192 = llvm.add %191, %181  : i64
    %193 = llvm.add %192, %186  : i64
    %194 = llvm.getelementptr %190[%193] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %195 = llvm.load %194 : !llvm.ptr<i32>
    %196 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.mlir.constant(4 : index) : i64
    %198 = llvm.mul %171, %197  : i64
    %199 = llvm.mlir.constant(4 : index) : i64
    %200 = llvm.mul %176, %199  : i64
    %201 = llvm.add %198, %200  : i64
    %202 = llvm.mlir.constant(4 : index) : i64
    %203 = llvm.mul %181, %202  : i64
    %204 = llvm.add %201, %203  : i64
    %205 = llvm.add %204, %189  : i64
    %206 = llvm.getelementptr %196[%205] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %195, %206 : !llvm.ptr<i32>
    %207 = llvm.add %186, %185  : i64
    llvm.br ^bb19(%207 : i64)
  ^bb21:  // pred: ^bb19
    %208 = llvm.add %181, %180  : i64
    llvm.br ^bb17(%208 : i64)
  ^bb22:  // pred: ^bb17
    %209 = llvm.add %176, %175  : i64
    llvm.br ^bb15(%209 : i64)
  ^bb23:  // pred: ^bb15
    %210 = llvm.add %171, %170  : i64
    llvm.br ^bb13(%210 : i64)
  ^bb24:  // pred: ^bb13
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%211 : i64)
  ^bb25(%214: i64):  // 2 preds: ^bb24, ^bb35
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%216 : i64)
  ^bb27(%219: i64):  // 2 preds: ^bb26, ^bb34
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%221 : i64)
  ^bb29(%224: i64):  // 2 preds: ^bb28, ^bb33
    %225 = llvm.icmp "slt" %224, %222 : i64
    llvm.cond_br %225, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %226 = llvm.mlir.constant(0 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%226 : i64)
  ^bb31(%229: i64):  // 2 preds: ^bb30, ^bb32
    %230 = llvm.icmp "slt" %229, %227 : i64
    llvm.cond_br %230, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %231 = llvm.mlir.constant(2 : index) : i64
    %232 = llvm.add %229, %231  : i64
    %233 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.add %214, %219  : i64
    %235 = llvm.add %234, %224  : i64
    %236 = llvm.add %235, %229  : i64
    %237 = llvm.getelementptr %233[%236] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %238 = llvm.load %237 : !llvm.ptr<i32>
    %239 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.mlir.constant(4 : index) : i64
    %241 = llvm.mul %214, %240  : i64
    %242 = llvm.mlir.constant(4 : index) : i64
    %243 = llvm.mul %219, %242  : i64
    %244 = llvm.add %241, %243  : i64
    %245 = llvm.mlir.constant(4 : index) : i64
    %246 = llvm.mul %224, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.add %247, %232  : i64
    %249 = llvm.getelementptr %239[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %238, %249 : !llvm.ptr<i32>
    %250 = llvm.add %229, %228  : i64
    llvm.br ^bb31(%250 : i64)
  ^bb33:  // pred: ^bb31
    %251 = llvm.add %224, %223  : i64
    llvm.br ^bb29(%251 : i64)
  ^bb34:  // pred: ^bb29
    %252 = llvm.add %219, %218  : i64
    llvm.br ^bb27(%252 : i64)
  ^bb35:  // pred: ^bb27
    %253 = llvm.add %214, %213  : i64
    llvm.br ^bb25(%253 : i64)
  ^bb36:  // pred: ^bb25
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%254 : i64)
  ^bb37(%257: i64):  // 2 preds: ^bb36, ^bb47
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%259 : i64)
  ^bb39(%262: i64):  // 2 preds: ^bb38, ^bb46
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%264 : i64)
  ^bb41(%267: i64):  // 2 preds: ^bb40, ^bb45
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%269 : i64)
  ^bb43(%272: i64):  // 2 preds: ^bb42, ^bb44
    %273 = llvm.icmp "slt" %272, %270 : i64
    llvm.cond_br %273, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %274 = llvm.mlir.constant(3 : index) : i64
    %275 = llvm.add %272, %274  : i64
    %276 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.add %257, %262  : i64
    %278 = llvm.add %277, %267  : i64
    %279 = llvm.add %278, %272  : i64
    %280 = llvm.getelementptr %276[%279] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %281 = llvm.load %280 : !llvm.ptr<i32>
    %282 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.mlir.constant(4 : index) : i64
    %284 = llvm.mul %257, %283  : i64
    %285 = llvm.mlir.constant(4 : index) : i64
    %286 = llvm.mul %262, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.mlir.constant(4 : index) : i64
    %289 = llvm.mul %267, %288  : i64
    %290 = llvm.add %287, %289  : i64
    %291 = llvm.add %290, %275  : i64
    %292 = llvm.getelementptr %282[%291] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %281, %292 : !llvm.ptr<i32>
    %293 = llvm.add %272, %271  : i64
    llvm.br ^bb43(%293 : i64)
  ^bb45:  // pred: ^bb43
    %294 = llvm.add %267, %266  : i64
    llvm.br ^bb41(%294 : i64)
  ^bb46:  // pred: ^bb41
    %295 = llvm.add %262, %261  : i64
    llvm.br ^bb39(%295 : i64)
  ^bb47:  // pred: ^bb39
    %296 = llvm.add %257, %256  : i64
    llvm.br ^bb37(%296 : i64)
  ^bb48:  // pred: ^bb37
    %297 = llvm.mlir.constant(4 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.null : !llvm.ptr<i64>
    %300 = llvm.getelementptr %299[%297] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %301 = llvm.ptrtoint %300 : !llvm.ptr<i64> to i64
    %302 = llvm.mlir.constant(16 : index) : i64
    %303 = llvm.add %301, %302  : i64
    %304 = llvm.call @malloc(%303) : (i64) -> !llvm.ptr<i8>
    %305 = llvm.bitcast %304 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %306 = llvm.ptrtoint %305 : !llvm.ptr<i64> to i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.sub %302, %307  : i64
    %309 = llvm.add %306, %308  : i64
    %310 = llvm.urem %309, %302  : i64
    %311 = llvm.sub %309, %310  : i64
    %312 = llvm.inttoptr %311 : i64 to !llvm.ptr<i64>
    %313 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %314 = llvm.insertvalue %305, %313[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %315 = llvm.insertvalue %312, %314[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.insertvalue %316, %315[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %318 = llvm.insertvalue %297, %317[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.insertvalue %298, %318[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.mlir.constant(4 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%320 : i64)
  ^bb49(%323: i64):  // 2 preds: ^bb48, ^bb50
    %324 = llvm.icmp "slt" %323, %321 : i64
    llvm.cond_br %324, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %325 = llvm.extractvalue %319[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %326 = llvm.getelementptr %325[%323] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %36, %326 : !llvm.ptr<i64>
    %327 = llvm.add %323, %322  : i64
    llvm.br ^bb49(%327 : i64)
  ^bb51:  // pred: ^bb49
    %328 = llvm.mlir.constant(4 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.null : !llvm.ptr<i64>
    %331 = llvm.getelementptr %330[%328] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %332 = llvm.ptrtoint %331 : !llvm.ptr<i64> to i64
    %333 = llvm.mlir.constant(16 : index) : i64
    %334 = llvm.add %332, %333  : i64
    %335 = llvm.call @malloc(%334) : (i64) -> !llvm.ptr<i8>
    %336 = llvm.bitcast %335 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %337 = llvm.ptrtoint %336 : !llvm.ptr<i64> to i64
    %338 = llvm.mlir.constant(1 : index) : i64
    %339 = llvm.sub %333, %338  : i64
    %340 = llvm.add %337, %339  : i64
    %341 = llvm.urem %340, %333  : i64
    %342 = llvm.sub %340, %341  : i64
    %343 = llvm.inttoptr %342 : i64 to !llvm.ptr<i64>
    %344 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %345 = llvm.insertvalue %336, %344[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %346 = llvm.insertvalue %343, %345[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.insertvalue %347, %346[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %349 = llvm.insertvalue %328, %348[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %350 = llvm.insertvalue %329, %349[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.mlir.constant(4 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%351 : i64)
  ^bb52(%354: i64):  // 2 preds: ^bb51, ^bb53
    %355 = llvm.icmp "slt" %354, %352 : i64
    llvm.cond_br %355, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %356 = llvm.extractvalue %319[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %357 = llvm.getelementptr %356[%354] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %358 = llvm.load %357 : !llvm.ptr<i64>
    %359 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %360 = llvm.load %359 : !llvm.ptr<i64>
    %361 = llvm.mul %358, %360  : i64
    %362 = llvm.extractvalue %350[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %363 = llvm.getelementptr %362[%354] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %361, %363 : !llvm.ptr<i64>
    %364 = llvm.add %354, %353  : i64
    llvm.br ^bb52(%364 : i64)
  ^bb54:  // pred: ^bb52
    %365 = llvm.mlir.constant(4 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.mlir.null : !llvm.ptr<i1>
    %368 = llvm.getelementptr %367[%365] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %369 = llvm.ptrtoint %368 : !llvm.ptr<i1> to i64
    %370 = llvm.mlir.constant(16 : index) : i64
    %371 = llvm.add %369, %370  : i64
    %372 = llvm.call @malloc(%371) : (i64) -> !llvm.ptr<i8>
    %373 = llvm.bitcast %372 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %374 = llvm.ptrtoint %373 : !llvm.ptr<i1> to i64
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.sub %370, %375  : i64
    %377 = llvm.add %374, %376  : i64
    %378 = llvm.urem %377, %370  : i64
    %379 = llvm.sub %377, %378  : i64
    %380 = llvm.inttoptr %379 : i64 to !llvm.ptr<i1>
    %381 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %382 = llvm.insertvalue %373, %381[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.insertvalue %380, %382[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.insertvalue %384, %383[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %386 = llvm.insertvalue %365, %385[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %387 = llvm.insertvalue %366, %386[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %388 = llvm.mlir.constant(0 : index) : i64
    %389 = llvm.mlir.constant(4 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%388 : i64)
  ^bb55(%391: i64):  // 2 preds: ^bb54, ^bb56
    %392 = llvm.icmp "slt" %391, %389 : i64
    llvm.cond_br %392, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %393 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %394 = llvm.getelementptr %393[%391] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %395 = llvm.load %394 : !llvm.ptr<i64>
    %396 = llvm.extractvalue %350[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.getelementptr %396[%391] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %398 = llvm.load %397 : !llvm.ptr<i64>
    %399 = llvm.icmp "eq" %395, %398 : i64
    %400 = llvm.extractvalue %387[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %401 = llvm.getelementptr %400[%391] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %399, %401 : !llvm.ptr<i1>
    %402 = llvm.add %391, %390  : i64
    llvm.br ^bb55(%402 : i64)
  ^bb57:  // pred: ^bb55
    %403 = llvm.mlir.constant(4 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.mlir.null : !llvm.ptr<i64>
    %406 = llvm.getelementptr %405[%403] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %407 = llvm.ptrtoint %406 : !llvm.ptr<i64> to i64
    %408 = llvm.mlir.constant(16 : index) : i64
    %409 = llvm.add %407, %408  : i64
    %410 = llvm.call @malloc(%409) : (i64) -> !llvm.ptr<i8>
    %411 = llvm.bitcast %410 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %412 = llvm.ptrtoint %411 : !llvm.ptr<i64> to i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.sub %408, %413  : i64
    %415 = llvm.add %412, %414  : i64
    %416 = llvm.urem %415, %408  : i64
    %417 = llvm.sub %415, %416  : i64
    %418 = llvm.inttoptr %417 : i64 to !llvm.ptr<i64>
    %419 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %420 = llvm.insertvalue %411, %419[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %421 = llvm.insertvalue %418, %420[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %422 = llvm.mlir.constant(0 : index) : i64
    %423 = llvm.insertvalue %422, %421[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %424 = llvm.insertvalue %403, %423[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %425 = llvm.insertvalue %404, %424[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %426 = llvm.mlir.constant(0 : index) : i64
    %427 = llvm.mlir.constant(4 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%426 : i64)
  ^bb58(%429: i64):  // 2 preds: ^bb57, ^bb59
    %430 = llvm.icmp "slt" %429, %427 : i64
    llvm.cond_br %430, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %431 = llvm.extractvalue %387[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %432 = llvm.getelementptr %431[%429] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %433 = llvm.load %432 : !llvm.ptr<i1>
    %434 = llvm.extractvalue %319[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %435 = llvm.getelementptr %434[%429] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %436 = llvm.load %435 : !llvm.ptr<i64>
    %437 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %438 = llvm.getelementptr %437[%429] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %439 = llvm.load %438 : !llvm.ptr<i64>
    %440 = llvm.select %433, %436, %439 : i1, i64
    %441 = llvm.extractvalue %425[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %442 = llvm.getelementptr %441[%429] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %440, %442 : !llvm.ptr<i64>
    %443 = llvm.add %429, %428  : i64
    llvm.br ^bb58(%443 : i64)
  ^bb60:  // pred: ^bb58
    %444 = llvm.extractvalue %425[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %445 = llvm.getelementptr %444[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %446 = llvm.load %445 : !llvm.ptr<i64>
    %447 = llvm.extractvalue %425[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %448 = llvm.getelementptr %447[%39] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %449 = llvm.load %448 : !llvm.ptr<i64>
    %450 = llvm.extractvalue %425[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %451 = llvm.getelementptr %450[%38] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %452 = llvm.load %451 : !llvm.ptr<i64>
    %453 = llvm.mlir.constant(4 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.mul %453, %452  : i64
    %456 = llvm.mul %455, %449  : i64
    %457 = llvm.mul %456, %446  : i64
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
    %477 = llvm.insertvalue %446, %476[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.insertvalue %449, %477[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.insertvalue %452, %478[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.insertvalue %453, %479[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.insertvalue %456, %480[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.insertvalue %455, %481[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.insertvalue %453, %482[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %484 = llvm.insertvalue %454, %483[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %485 = llvm.mlir.constant(0 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%485 : i64)
  ^bb61(%487: i64):  // 2 preds: ^bb60, ^bb71
    %488 = llvm.icmp "slt" %487, %446 : i64
    llvm.cond_br %488, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %489 = llvm.mlir.constant(0 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%489 : i64)
  ^bb63(%491: i64):  // 2 preds: ^bb62, ^bb70
    %492 = llvm.icmp "slt" %491, %449 : i64
    llvm.cond_br %492, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %493 = llvm.mlir.constant(0 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%493 : i64)
  ^bb65(%495: i64):  // 2 preds: ^bb64, ^bb69
    %496 = llvm.icmp "slt" %495, %452 : i64
    llvm.cond_br %496, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %497 = llvm.mlir.constant(0 : index) : i64
    %498 = llvm.mlir.constant(4 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%497 : i64)
  ^bb67(%500: i64):  // 2 preds: ^bb66, ^bb68
    %501 = llvm.icmp "slt" %500, %498 : i64
    llvm.cond_br %501, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %502 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.mlir.constant(4 : index) : i64
    %504 = llvm.mul %37, %503  : i64
    %505 = llvm.mlir.constant(4 : index) : i64
    %506 = llvm.mul %37, %505  : i64
    %507 = llvm.add %504, %506  : i64
    %508 = llvm.mlir.constant(4 : index) : i64
    %509 = llvm.mul %37, %508  : i64
    %510 = llvm.add %507, %509  : i64
    %511 = llvm.add %510, %500  : i64
    %512 = llvm.getelementptr %502[%511] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %513 = llvm.load %512 : !llvm.ptr<i32>
    %514 = llvm.extractvalue %484[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.extractvalue %484[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.mul %487, %515  : i64
    %517 = llvm.extractvalue %484[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.mul %491, %517  : i64
    %519 = llvm.add %516, %518  : i64
    %520 = llvm.mlir.constant(4 : index) : i64
    %521 = llvm.mul %495, %520  : i64
    %522 = llvm.add %519, %521  : i64
    %523 = llvm.add %522, %500  : i64
    %524 = llvm.getelementptr %514[%523] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %513, %524 : !llvm.ptr<i32>
    %525 = llvm.add %500, %499  : i64
    llvm.br ^bb67(%525 : i64)
  ^bb69:  // pred: ^bb67
    %526 = llvm.add %495, %494  : i64
    llvm.br ^bb65(%526 : i64)
  ^bb70:  // pred: ^bb65
    %527 = llvm.add %491, %490  : i64
    llvm.br ^bb63(%527 : i64)
  ^bb71:  // pred: ^bb63
    %528 = llvm.add %487, %486  : i64
    llvm.br ^bb61(%528 : i64)
  ^bb72:  // pred: ^bb61
    %529 = llvm.mlir.constant(1 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    %531 = llvm.mlir.constant(2 : index) : i64
    %532 = llvm.mlir.constant(4 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    %534 = llvm.mlir.constant(8 : index) : i64
    %535 = llvm.mlir.constant(8 : index) : i64
    %536 = llvm.mlir.constant(8 : index) : i64
    %537 = llvm.mlir.null : !llvm.ptr<i32>
    %538 = llvm.getelementptr %537[%536] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %539 = llvm.ptrtoint %538 : !llvm.ptr<i32> to i64
    %540 = llvm.mlir.constant(16 : index) : i64
    %541 = llvm.add %539, %540  : i64
    %542 = llvm.call @malloc(%541) : (i64) -> !llvm.ptr<i8>
    %543 = llvm.bitcast %542 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %544 = llvm.ptrtoint %543 : !llvm.ptr<i32> to i64
    %545 = llvm.mlir.constant(1 : index) : i64
    %546 = llvm.sub %540, %545  : i64
    %547 = llvm.add %544, %546  : i64
    %548 = llvm.urem %547, %540  : i64
    %549 = llvm.sub %547, %548  : i64
    %550 = llvm.inttoptr %549 : i64 to !llvm.ptr<i32>
    %551 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %552 = llvm.insertvalue %543, %551[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %553 = llvm.insertvalue %550, %552[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %554 = llvm.mlir.constant(0 : index) : i64
    %555 = llvm.insertvalue %554, %553[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %556 = llvm.insertvalue %529, %555[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %557 = llvm.insertvalue %530, %556[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %558 = llvm.insertvalue %531, %557[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %559 = llvm.insertvalue %532, %558[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %560 = llvm.insertvalue %535, %559[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %561 = llvm.insertvalue %534, %560[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %562 = llvm.insertvalue %532, %561[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %563 = llvm.insertvalue %533, %562[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %564 = llvm.mlir.constant(0 : index) : i64
    %565 = llvm.mlir.constant(1 : index) : i64
    %566 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%564 : i64)
  ^bb73(%567: i64):  // 2 preds: ^bb72, ^bb83
    %568 = llvm.icmp "slt" %567, %565 : i64
    llvm.cond_br %568, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %569 = llvm.mlir.constant(0 : index) : i64
    %570 = llvm.mlir.constant(1 : index) : i64
    %571 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%569 : i64)
  ^bb75(%572: i64):  // 2 preds: ^bb74, ^bb82
    %573 = llvm.icmp "slt" %572, %570 : i64
    llvm.cond_br %573, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %574 = llvm.mlir.constant(0 : index) : i64
    %575 = llvm.mlir.constant(2 : index) : i64
    %576 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%574 : i64)
  ^bb77(%577: i64):  // 2 preds: ^bb76, ^bb81
    %578 = llvm.icmp "slt" %577, %575 : i64
    llvm.cond_br %578, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %579 = llvm.mlir.constant(0 : index) : i64
    %580 = llvm.mlir.constant(4 : index) : i64
    %581 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%579 : i64)
  ^bb79(%582: i64):  // 2 preds: ^bb78, ^bb80
    %583 = llvm.icmp "slt" %582, %580 : i64
    llvm.cond_br %583, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %584 = llvm.extractvalue %484[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.extractvalue %484[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %586 = llvm.mul %567, %585  : i64
    %587 = llvm.extractvalue %484[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %588 = llvm.mul %572, %587  : i64
    %589 = llvm.add %586, %588  : i64
    %590 = llvm.mlir.constant(4 : index) : i64
    %591 = llvm.mul %577, %590  : i64
    %592 = llvm.add %589, %591  : i64
    %593 = llvm.add %592, %582  : i64
    %594 = llvm.getelementptr %584[%593] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %595 = llvm.load %594 : !llvm.ptr<i32>
    %596 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %597 = llvm.add %37, %37  : i64
    %598 = llvm.add %597, %37  : i64
    %599 = llvm.add %598, %37  : i64
    %600 = llvm.getelementptr %596[%599] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %601 = llvm.load %600 : !llvm.ptr<i32>
    %602 = llvm.add %595, %601  : i32
    %603 = llvm.extractvalue %563[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %604 = llvm.mlir.constant(8 : index) : i64
    %605 = llvm.mul %567, %604  : i64
    %606 = llvm.mlir.constant(8 : index) : i64
    %607 = llvm.mul %572, %606  : i64
    %608 = llvm.add %605, %607  : i64
    %609 = llvm.mlir.constant(4 : index) : i64
    %610 = llvm.mul %577, %609  : i64
    %611 = llvm.add %608, %610  : i64
    %612 = llvm.add %611, %582  : i64
    %613 = llvm.getelementptr %603[%612] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %602, %613 : !llvm.ptr<i32>
    %614 = llvm.add %582, %581  : i64
    llvm.br ^bb79(%614 : i64)
  ^bb81:  // pred: ^bb79
    %615 = llvm.add %577, %576  : i64
    llvm.br ^bb77(%615 : i64)
  ^bb82:  // pred: ^bb77
    %616 = llvm.add %572, %571  : i64
    llvm.br ^bb75(%616 : i64)
  ^bb83:  // pred: ^bb75
    %617 = llvm.add %567, %566  : i64
    llvm.br ^bb73(%617 : i64)
  ^bb84:  // pred: ^bb73
    %618 = llvm.mlir.constant(1 : index) : i64
    %619 = llvm.mlir.constant(1 : index) : i64
    %620 = llvm.mlir.constant(2 : index) : i64
    %621 = llvm.mlir.constant(4 : index) : i64
    %622 = llvm.mlir.constant(1 : index) : i64
    %623 = llvm.mlir.constant(8 : index) : i64
    %624 = llvm.mlir.constant(8 : index) : i64
    %625 = llvm.mlir.constant(8 : index) : i64
    %626 = llvm.mlir.null : !llvm.ptr<i32>
    %627 = llvm.getelementptr %626[%625] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %628 = llvm.ptrtoint %627 : !llvm.ptr<i32> to i64
    %629 = llvm.mlir.constant(16 : index) : i64
    %630 = llvm.add %628, %629  : i64
    %631 = llvm.call @malloc(%630) : (i64) -> !llvm.ptr<i8>
    %632 = llvm.bitcast %631 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %633 = llvm.ptrtoint %632 : !llvm.ptr<i32> to i64
    %634 = llvm.mlir.constant(1 : index) : i64
    %635 = llvm.sub %629, %634  : i64
    %636 = llvm.add %633, %635  : i64
    %637 = llvm.urem %636, %629  : i64
    %638 = llvm.sub %636, %637  : i64
    %639 = llvm.inttoptr %638 : i64 to !llvm.ptr<i32>
    %640 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %641 = llvm.insertvalue %632, %640[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %642 = llvm.insertvalue %639, %641[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %643 = llvm.mlir.constant(0 : index) : i64
    %644 = llvm.insertvalue %643, %642[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %645 = llvm.insertvalue %618, %644[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %646 = llvm.insertvalue %619, %645[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %647 = llvm.insertvalue %620, %646[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %648 = llvm.insertvalue %621, %647[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %649 = llvm.insertvalue %624, %648[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %650 = llvm.insertvalue %623, %649[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %651 = llvm.insertvalue %621, %650[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %652 = llvm.insertvalue %622, %651[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %653 = llvm.mlir.constant(0 : index) : i64
    %654 = llvm.mlir.constant(1 : index) : i64
    %655 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%653 : i64)
  ^bb85(%656: i64):  // 2 preds: ^bb84, ^bb95
    %657 = llvm.icmp "slt" %656, %654 : i64
    llvm.cond_br %657, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %658 = llvm.mlir.constant(0 : index) : i64
    %659 = llvm.mlir.constant(1 : index) : i64
    %660 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%658 : i64)
  ^bb87(%661: i64):  // 2 preds: ^bb86, ^bb94
    %662 = llvm.icmp "slt" %661, %659 : i64
    llvm.cond_br %662, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %663 = llvm.mlir.constant(0 : index) : i64
    %664 = llvm.mlir.constant(2 : index) : i64
    %665 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%663 : i64)
  ^bb89(%666: i64):  // 2 preds: ^bb88, ^bb93
    %667 = llvm.icmp "slt" %666, %664 : i64
    llvm.cond_br %667, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %668 = llvm.mlir.constant(0 : index) : i64
    %669 = llvm.mlir.constant(4 : index) : i64
    %670 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%668 : i64)
  ^bb91(%671: i64):  // 2 preds: ^bb90, ^bb92
    %672 = llvm.icmp "slt" %671, %669 : i64
    llvm.cond_br %672, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %673 = llvm.extractvalue %484[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %674 = llvm.extractvalue %484[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %675 = llvm.mul %656, %674  : i64
    %676 = llvm.extractvalue %484[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %677 = llvm.mul %661, %676  : i64
    %678 = llvm.add %675, %677  : i64
    %679 = llvm.mlir.constant(4 : index) : i64
    %680 = llvm.mul %666, %679  : i64
    %681 = llvm.add %678, %680  : i64
    %682 = llvm.add %681, %671  : i64
    %683 = llvm.getelementptr %673[%682] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %684 = llvm.load %683 : !llvm.ptr<i32>
    %685 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %686 = llvm.add %37, %37  : i64
    %687 = llvm.add %686, %37  : i64
    %688 = llvm.add %687, %37  : i64
    %689 = llvm.getelementptr %685[%688] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %690 = llvm.load %689 : !llvm.ptr<i32>
    %691 = llvm.icmp "sgt" %684, %690 : i32
    %692 = llvm.select %691, %684, %690 : i1, i32
    %693 = llvm.extractvalue %652[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %694 = llvm.mlir.constant(8 : index) : i64
    %695 = llvm.mul %656, %694  : i64
    %696 = llvm.mlir.constant(8 : index) : i64
    %697 = llvm.mul %661, %696  : i64
    %698 = llvm.add %695, %697  : i64
    %699 = llvm.mlir.constant(4 : index) : i64
    %700 = llvm.mul %666, %699  : i64
    %701 = llvm.add %698, %700  : i64
    %702 = llvm.add %701, %671  : i64
    %703 = llvm.getelementptr %693[%702] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %692, %703 : !llvm.ptr<i32>
    %704 = llvm.add %671, %670  : i64
    llvm.br ^bb91(%704 : i64)
  ^bb93:  // pred: ^bb91
    %705 = llvm.add %666, %665  : i64
    llvm.br ^bb89(%705 : i64)
  ^bb94:  // pred: ^bb89
    %706 = llvm.add %661, %660  : i64
    llvm.br ^bb87(%706 : i64)
  ^bb95:  // pred: ^bb87
    %707 = llvm.add %656, %655  : i64
    llvm.br ^bb85(%707 : i64)
  ^bb96:  // pred: ^bb85
    %708 = llvm.mlir.constant(1 : index) : i64
    %709 = llvm.mlir.constant(1 : index) : i64
    %710 = llvm.mlir.constant(1 : index) : i64
    %711 = llvm.mlir.constant(4 : index) : i64
    %712 = llvm.mlir.constant(1 : index) : i64
    %713 = llvm.mlir.constant(4 : index) : i64
    %714 = llvm.mlir.constant(4 : index) : i64
    %715 = llvm.mlir.constant(4 : index) : i64
    %716 = llvm.mlir.null : !llvm.ptr<i1>
    %717 = llvm.getelementptr %716[%715] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %718 = llvm.ptrtoint %717 : !llvm.ptr<i1> to i64
    %719 = llvm.mlir.constant(16 : index) : i64
    %720 = llvm.add %718, %719  : i64
    %721 = llvm.call @malloc(%720) : (i64) -> !llvm.ptr<i8>
    %722 = llvm.bitcast %721 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %723 = llvm.ptrtoint %722 : !llvm.ptr<i1> to i64
    %724 = llvm.mlir.constant(1 : index) : i64
    %725 = llvm.sub %719, %724  : i64
    %726 = llvm.add %723, %725  : i64
    %727 = llvm.urem %726, %719  : i64
    %728 = llvm.sub %726, %727  : i64
    %729 = llvm.inttoptr %728 : i64 to !llvm.ptr<i1>
    %730 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %731 = llvm.insertvalue %722, %730[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %732 = llvm.insertvalue %729, %731[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %733 = llvm.mlir.constant(0 : index) : i64
    %734 = llvm.insertvalue %733, %732[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %735 = llvm.insertvalue %708, %734[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %736 = llvm.insertvalue %709, %735[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %737 = llvm.insertvalue %710, %736[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %738 = llvm.insertvalue %711, %737[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %739 = llvm.insertvalue %714, %738[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %740 = llvm.insertvalue %713, %739[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %741 = llvm.insertvalue %711, %740[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %742 = llvm.insertvalue %712, %741[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %743 = llvm.mlir.constant(0 : index) : i64
    %744 = llvm.mlir.constant(1 : index) : i64
    %745 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%743 : i64)
  ^bb97(%746: i64):  // 2 preds: ^bb96, ^bb107
    %747 = llvm.icmp "slt" %746, %744 : i64
    llvm.cond_br %747, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %748 = llvm.mlir.constant(0 : index) : i64
    %749 = llvm.mlir.constant(1 : index) : i64
    %750 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%748 : i64)
  ^bb99(%751: i64):  // 2 preds: ^bb98, ^bb106
    %752 = llvm.icmp "slt" %751, %749 : i64
    llvm.cond_br %752, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %753 = llvm.mlir.constant(0 : index) : i64
    %754 = llvm.mlir.constant(1 : index) : i64
    %755 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%753 : i64)
  ^bb101(%756: i64):  // 2 preds: ^bb100, ^bb105
    %757 = llvm.icmp "slt" %756, %754 : i64
    llvm.cond_br %757, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %758 = llvm.mlir.constant(0 : index) : i64
    %759 = llvm.mlir.constant(4 : index) : i64
    %760 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%758 : i64)
  ^bb103(%761: i64):  // 2 preds: ^bb102, ^bb104
    %762 = llvm.icmp "slt" %761, %759 : i64
    llvm.cond_br %762, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %763 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %764 = llvm.mlir.constant(4 : index) : i64
    %765 = llvm.mul %746, %764  : i64
    %766 = llvm.mlir.constant(4 : index) : i64
    %767 = llvm.mul %751, %766  : i64
    %768 = llvm.add %765, %767  : i64
    %769 = llvm.mlir.constant(4 : index) : i64
    %770 = llvm.mul %756, %769  : i64
    %771 = llvm.add %768, %770  : i64
    %772 = llvm.add %771, %761  : i64
    %773 = llvm.getelementptr %763[%772] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %774 = llvm.load %773 : !llvm.ptr<i32>
    %775 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %776 = llvm.mlir.constant(4 : index) : i64
    %777 = llvm.mul %746, %776  : i64
    %778 = llvm.mlir.constant(4 : index) : i64
    %779 = llvm.mul %751, %778  : i64
    %780 = llvm.add %777, %779  : i64
    %781 = llvm.mlir.constant(4 : index) : i64
    %782 = llvm.mul %756, %781  : i64
    %783 = llvm.add %780, %782  : i64
    %784 = llvm.add %783, %761  : i64
    %785 = llvm.getelementptr %775[%784] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %786 = llvm.load %785 : !llvm.ptr<i32>
    %787 = llvm.icmp "eq" %774, %786 : i32
    %788 = llvm.extractvalue %742[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %789 = llvm.mlir.constant(4 : index) : i64
    %790 = llvm.mul %746, %789  : i64
    %791 = llvm.mlir.constant(4 : index) : i64
    %792 = llvm.mul %751, %791  : i64
    %793 = llvm.add %790, %792  : i64
    %794 = llvm.mlir.constant(4 : index) : i64
    %795 = llvm.mul %756, %794  : i64
    %796 = llvm.add %793, %795  : i64
    %797 = llvm.add %796, %761  : i64
    %798 = llvm.getelementptr %788[%797] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %787, %798 : !llvm.ptr<i1>
    %799 = llvm.add %761, %760  : i64
    llvm.br ^bb103(%799 : i64)
  ^bb105:  // pred: ^bb103
    %800 = llvm.add %756, %755  : i64
    llvm.br ^bb101(%800 : i64)
  ^bb106:  // pred: ^bb101
    %801 = llvm.add %751, %750  : i64
    llvm.br ^bb99(%801 : i64)
  ^bb107:  // pred: ^bb99
    %802 = llvm.add %746, %745  : i64
    llvm.br ^bb97(%802 : i64)
  ^bb108:  // pred: ^bb97
    %803 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %804 = llvm.insertvalue %563, %803[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %805 = llvm.insertvalue %652, %804[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %806 = llvm.insertvalue %742, %805[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %806 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0", "v4_0", "v2_0"], llvm.emit_c_interface, output_names = ["v8_0", "v7_0", "v1_0"]} {
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
    %36 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %36, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %126 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %127 = llvm.extractvalue %126[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %128 = llvm.extractvalue %126[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %129 = llvm.extractvalue %126[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %130 = llvm.mlir.constant(3 : i64) : i64
    %131 = llvm.mlir.constant(24 : i64) : i64
    %132 = llvm.call @malloc(%131) : (i64) -> !llvm.ptr<i8>
    %133 = llvm.bitcast %132 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %134 = llvm.mlir.constant(4 : i64) : i64
    %135 = llvm.call @omTensorCreateUntyped(%134) : (i64) -> !llvm.ptr<i8>
    %136 = llvm.mlir.constant(1 : i64) : i64
    %137 = llvm.extractvalue %127[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.bitcast %137 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %139 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.bitcast %139 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%135, %136, %138, %140) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %141 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%135, %141) : (!llvm.ptr<i8>, i64) -> ()
    %142 = llvm.call @omTensorGetShape(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %143 = llvm.call @omTensorGetStrides(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %144 = llvm.mlir.constant(0 : i64) : i64
    %145 = llvm.extractvalue %127[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %142[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %127[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %143[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(1 : i64) : i64
    %150 = llvm.extractvalue %127[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %142[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %127[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %143[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.mlir.constant(2 : i64) : i64
    %155 = llvm.extractvalue %127[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.getelementptr %142[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %155, %156 : !llvm.ptr<i64>
    %157 = llvm.extractvalue %127[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.getelementptr %143[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.mlir.constant(3 : i64) : i64
    %160 = llvm.extractvalue %127[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.getelementptr %142[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %160, %161 : !llvm.ptr<i64>
    %162 = llvm.extractvalue %127[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.getelementptr %143[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.mlir.constant(0 : i64) : i64
    %165 = llvm.getelementptr %133[%164] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %135, %165 : !llvm.ptr<ptr<i8>>
    %166 = llvm.mlir.constant(4 : i64) : i64
    %167 = llvm.call @omTensorCreateUntyped(%166) : (i64) -> !llvm.ptr<i8>
    %168 = llvm.mlir.constant(1 : i64) : i64
    %169 = llvm.extractvalue %128[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.bitcast %169 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %171 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.bitcast %171 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%167, %168, %170, %172) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %173 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%167, %173) : (!llvm.ptr<i8>, i64) -> ()
    %174 = llvm.call @omTensorGetShape(%167) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %175 = llvm.call @omTensorGetStrides(%167) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %176 = llvm.mlir.constant(0 : i64) : i64
    %177 = llvm.extractvalue %128[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.getelementptr %174[%176] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %177, %178 : !llvm.ptr<i64>
    %179 = llvm.extractvalue %128[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.getelementptr %175[%176] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %179, %180 : !llvm.ptr<i64>
    %181 = llvm.mlir.constant(1 : i64) : i64
    %182 = llvm.extractvalue %128[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.getelementptr %174[%181] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %182, %183 : !llvm.ptr<i64>
    %184 = llvm.extractvalue %128[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.getelementptr %175[%181] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %184, %185 : !llvm.ptr<i64>
    %186 = llvm.mlir.constant(2 : i64) : i64
    %187 = llvm.extractvalue %128[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.getelementptr %174[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %187, %188 : !llvm.ptr<i64>
    %189 = llvm.extractvalue %128[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.getelementptr %175[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %189, %190 : !llvm.ptr<i64>
    %191 = llvm.mlir.constant(3 : i64) : i64
    %192 = llvm.extractvalue %128[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.getelementptr %174[%191] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %192, %193 : !llvm.ptr<i64>
    %194 = llvm.extractvalue %128[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.getelementptr %175[%191] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %194, %195 : !llvm.ptr<i64>
    %196 = llvm.mlir.constant(1 : i64) : i64
    %197 = llvm.getelementptr %133[%196] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %167, %197 : !llvm.ptr<ptr<i8>>
    %198 = llvm.mlir.constant(4 : i64) : i64
    %199 = llvm.call @omTensorCreateUntyped(%198) : (i64) -> !llvm.ptr<i8>
    %200 = llvm.mlir.constant(1 : i64) : i64
    %201 = llvm.extractvalue %129[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.bitcast %201 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %203 = llvm.extractvalue %129[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.bitcast %203 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%199, %200, %202, %204) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %205 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%199, %205) : (!llvm.ptr<i8>, i64) -> ()
    %206 = llvm.call @omTensorGetShape(%199) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %207 = llvm.call @omTensorGetStrides(%199) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %208 = llvm.mlir.constant(0 : i64) : i64
    %209 = llvm.extractvalue %129[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.getelementptr %206[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %209, %210 : !llvm.ptr<i64>
    %211 = llvm.extractvalue %129[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.getelementptr %207[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %211, %212 : !llvm.ptr<i64>
    %213 = llvm.mlir.constant(1 : i64) : i64
    %214 = llvm.extractvalue %129[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.getelementptr %206[%213] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %214, %215 : !llvm.ptr<i64>
    %216 = llvm.extractvalue %129[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.getelementptr %207[%213] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %216, %217 : !llvm.ptr<i64>
    %218 = llvm.mlir.constant(2 : i64) : i64
    %219 = llvm.extractvalue %129[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.getelementptr %206[%218] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %219, %220 : !llvm.ptr<i64>
    %221 = llvm.extractvalue %129[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.getelementptr %207[%218] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %221, %222 : !llvm.ptr<i64>
    %223 = llvm.mlir.constant(3 : i64) : i64
    %224 = llvm.extractvalue %129[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.getelementptr %206[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %224, %225 : !llvm.ptr<i64>
    %226 = llvm.extractvalue %129[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.getelementptr %207[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %226, %227 : !llvm.ptr<i64>
    %228 = llvm.mlir.constant(2 : i64) : i64
    %229 = llvm.getelementptr %133[%228] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %199, %229 : !llvm.ptr<ptr<i8>>
    %230 = llvm.call @omTensorListCreate(%133, %130, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %230 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<212 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<212 x i8>> to !llvm.ptr<i8>
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

