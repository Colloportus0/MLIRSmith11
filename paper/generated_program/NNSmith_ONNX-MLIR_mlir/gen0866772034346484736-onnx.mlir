module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v11_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v10_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [2 , 1 , 4 , 1] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [5 , 1 , 4 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<[[[[4], [7], [3], [4]]]]> : tensor<1x1x4x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<4 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_4(dense<[[[[6]]], [[[4]]]]> : tensor<2x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr<i32>, %arg34: !llvm.ptr<i32>, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64, %arg44: !llvm.ptr<i32>, %arg45: !llvm.ptr<i32>, %arg46: i64, %arg47: i64, %arg48: i64, %arg49: i64, %arg50: i64, %arg51: i64, %arg52: i64, %arg53: i64, %arg54: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v11_0", "v10_0", "v9_0", "v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v1_0", "v0_0"]} {
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
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.insertvalue %arg44, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %arg45, %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %arg46, %50[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %arg47, %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %arg51, %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %arg48, %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %arg52, %54[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %arg49, %55[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %arg53, %56[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %arg50, %57[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %arg54, %58[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<2 x array<1 x array<1 x array<1 x i32>>>>>
    %62 = llvm.bitcast %61 : !llvm.ptr<array<2 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %64 = llvm.insertvalue %62, %63[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(2 : index) : i64
    %69 = llvm.insertvalue %68, %67[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.insertvalue %74, %73[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.insertvalue %82, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x array<1 x array<4 x array<1 x i32>>>>>
    %85 = llvm.bitcast %84 : !llvm.ptr<array<1 x array<1 x array<4 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %86 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %87 = llvm.insertvalue %85, %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %85, %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.insertvalue %89, %88[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.insertvalue %91, %90[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(4 : index) : i64
    %94 = llvm.insertvalue %93, %92[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.insertvalue %95, %94[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(4 : index) : i64
    %98 = llvm.insertvalue %97, %96[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(4 : index) : i64
    %100 = llvm.insertvalue %99, %98[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.insertvalue %101, %100[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.insertvalue %103, %102[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.insertvalue %105, %104[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(4 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.constant(4 : index) : i64
    %113 = llvm.mlir.constant(8 : index) : i64
    %114 = llvm.mlir.null : !llvm.ptr<i32>
    %115 = llvm.getelementptr %114[%113] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %116 = llvm.ptrtoint %115 : !llvm.ptr<i32> to i64
    %117 = llvm.mlir.constant(16 : index) : i64
    %118 = llvm.add %116, %117  : i64
    %119 = llvm.call @malloc(%118) : (i64) -> !llvm.ptr<i8>
    %120 = llvm.bitcast %119 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %121 = llvm.ptrtoint %120 : !llvm.ptr<i32> to i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.sub %117, %122  : i64
    %124 = llvm.add %121, %123  : i64
    %125 = llvm.urem %124, %117  : i64
    %126 = llvm.sub %124, %125  : i64
    %127 = llvm.inttoptr %126 : i64 to !llvm.ptr<i32>
    %128 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %129 = llvm.insertvalue %120, %128[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %127, %129[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.insertvalue %131, %130[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %107, %132[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %108, %133[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %109, %134[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %110, %135[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %112, %136[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %109, %137[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.insertvalue %110, %138[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %111, %139[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%141 : i64)
  ^bb1(%144: i64):  // 2 preds: ^bb0, ^bb11
    %145 = llvm.icmp "slt" %144, %142 : i64
    llvm.cond_br %145, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%146 : i64)
  ^bb3(%149: i64):  // 2 preds: ^bb2, ^bb10
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%151 : i64)
  ^bb5(%154: i64):  // 2 preds: ^bb4, ^bb9
    %155 = llvm.icmp "slt" %154, %152 : i64
    llvm.cond_br %155, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%156 : i64)
  ^bb7(%159: i64):  // 2 preds: ^bb6, ^bb8
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %161 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.add %144, %149  : i64
    %163 = llvm.add %162, %154  : i64
    %164 = llvm.add %163, %159  : i64
    %165 = llvm.getelementptr %161[%164] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %166 = llvm.load %165 : !llvm.ptr<i32>
    %167 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.mlir.constant(4 : index) : i64
    %169 = llvm.mul %144, %168  : i64
    %170 = llvm.mlir.constant(4 : index) : i64
    %171 = llvm.mul %149, %170  : i64
    %172 = llvm.add %169, %171  : i64
    %173 = llvm.add %172, %154  : i64
    %174 = llvm.add %173, %159  : i64
    %175 = llvm.getelementptr %167[%174] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %166, %175 : !llvm.ptr<i32>
    %176 = llvm.add %159, %158  : i64
    llvm.br ^bb7(%176 : i64)
  ^bb9:  // pred: ^bb7
    %177 = llvm.add %154, %153  : i64
    llvm.br ^bb5(%177 : i64)
  ^bb10:  // pred: ^bb5
    %178 = llvm.add %149, %148  : i64
    llvm.br ^bb3(%178 : i64)
  ^bb11:  // pred: ^bb3
    %179 = llvm.add %144, %143  : i64
    llvm.br ^bb1(%179 : i64)
  ^bb12:  // pred: ^bb1
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(2 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%180 : i64)
  ^bb13(%183: i64):  // 2 preds: ^bb12, ^bb23
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%185 : i64)
  ^bb15(%188: i64):  // 2 preds: ^bb14, ^bb22
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%190 : i64)
  ^bb17(%193: i64):  // 2 preds: ^bb16, ^bb21
    %194 = llvm.icmp "slt" %193, %191 : i64
    llvm.cond_br %194, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%195 : i64)
  ^bb19(%198: i64):  // 2 preds: ^bb18, ^bb20
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.add %193, %200  : i64
    %202 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.add %183, %188  : i64
    %204 = llvm.add %203, %193  : i64
    %205 = llvm.add %204, %198  : i64
    %206 = llvm.getelementptr %202[%205] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %207 = llvm.load %206 : !llvm.ptr<i32>
    %208 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.mlir.constant(4 : index) : i64
    %210 = llvm.mul %183, %209  : i64
    %211 = llvm.mlir.constant(4 : index) : i64
    %212 = llvm.mul %188, %211  : i64
    %213 = llvm.add %210, %212  : i64
    %214 = llvm.add %213, %201  : i64
    %215 = llvm.add %214, %198  : i64
    %216 = llvm.getelementptr %208[%215] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %207, %216 : !llvm.ptr<i32>
    %217 = llvm.add %198, %197  : i64
    llvm.br ^bb19(%217 : i64)
  ^bb21:  // pred: ^bb19
    %218 = llvm.add %193, %192  : i64
    llvm.br ^bb17(%218 : i64)
  ^bb22:  // pred: ^bb17
    %219 = llvm.add %188, %187  : i64
    llvm.br ^bb15(%219 : i64)
  ^bb23:  // pred: ^bb15
    %220 = llvm.add %183, %182  : i64
    llvm.br ^bb13(%220 : i64)
  ^bb24:  // pred: ^bb13
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.mlir.constant(2 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%221 : i64)
  ^bb25(%224: i64):  // 2 preds: ^bb24, ^bb35
    %225 = llvm.icmp "slt" %224, %222 : i64
    llvm.cond_br %225, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %226 = llvm.mlir.constant(0 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%226 : i64)
  ^bb27(%229: i64):  // 2 preds: ^bb26, ^bb34
    %230 = llvm.icmp "slt" %229, %227 : i64
    llvm.cond_br %230, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%231 : i64)
  ^bb29(%234: i64):  // 2 preds: ^bb28, ^bb33
    %235 = llvm.icmp "slt" %234, %232 : i64
    llvm.cond_br %235, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%236 : i64)
  ^bb31(%239: i64):  // 2 preds: ^bb30, ^bb32
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.add %234, %241  : i64
    %243 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.add %224, %229  : i64
    %245 = llvm.add %244, %234  : i64
    %246 = llvm.add %245, %239  : i64
    %247 = llvm.getelementptr %243[%246] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %248 = llvm.load %247 : !llvm.ptr<i32>
    %249 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.mlir.constant(4 : index) : i64
    %251 = llvm.mul %224, %250  : i64
    %252 = llvm.mlir.constant(4 : index) : i64
    %253 = llvm.mul %229, %252  : i64
    %254 = llvm.add %251, %253  : i64
    %255 = llvm.add %254, %242  : i64
    %256 = llvm.add %255, %239  : i64
    %257 = llvm.getelementptr %249[%256] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %248, %257 : !llvm.ptr<i32>
    %258 = llvm.add %239, %238  : i64
    llvm.br ^bb31(%258 : i64)
  ^bb33:  // pred: ^bb31
    %259 = llvm.add %234, %233  : i64
    llvm.br ^bb29(%259 : i64)
  ^bb34:  // pred: ^bb29
    %260 = llvm.add %229, %228  : i64
    llvm.br ^bb27(%260 : i64)
  ^bb35:  // pred: ^bb27
    %261 = llvm.add %224, %223  : i64
    llvm.br ^bb25(%261 : i64)
  ^bb36:  // pred: ^bb25
    %262 = llvm.mlir.constant(0 : index) : i64
    %263 = llvm.mlir.constant(2 : index) : i64
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
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%277 : i64)
  ^bb43(%280: i64):  // 2 preds: ^bb42, ^bb44
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %282 = llvm.mlir.constant(3 : index) : i64
    %283 = llvm.add %275, %282  : i64
    %284 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.add %265, %270  : i64
    %286 = llvm.add %285, %275  : i64
    %287 = llvm.add %286, %280  : i64
    %288 = llvm.getelementptr %284[%287] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %289 = llvm.load %288 : !llvm.ptr<i32>
    %290 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.mlir.constant(4 : index) : i64
    %292 = llvm.mul %265, %291  : i64
    %293 = llvm.mlir.constant(4 : index) : i64
    %294 = llvm.mul %270, %293  : i64
    %295 = llvm.add %292, %294  : i64
    %296 = llvm.add %295, %283  : i64
    %297 = llvm.add %296, %280  : i64
    %298 = llvm.getelementptr %290[%297] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %289, %298 : !llvm.ptr<i32>
    %299 = llvm.add %280, %279  : i64
    llvm.br ^bb43(%299 : i64)
  ^bb45:  // pred: ^bb43
    %300 = llvm.add %275, %274  : i64
    llvm.br ^bb41(%300 : i64)
  ^bb46:  // pred: ^bb41
    %301 = llvm.add %270, %269  : i64
    llvm.br ^bb39(%301 : i64)
  ^bb47:  // pred: ^bb39
    %302 = llvm.add %265, %264  : i64
    llvm.br ^bb37(%302 : i64)
  ^bb48:  // pred: ^bb37
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.constant(4 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(4 : index) : i64
    %309 = llvm.mlir.constant(8 : index) : i64
    %310 = llvm.mlir.null : !llvm.ptr<i1>
    %311 = llvm.getelementptr %310[%309] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %312 = llvm.ptrtoint %311 : !llvm.ptr<i1> to i64
    %313 = llvm.mlir.constant(16 : index) : i64
    %314 = llvm.add %312, %313  : i64
    %315 = llvm.call @malloc(%314) : (i64) -> !llvm.ptr<i8>
    %316 = llvm.bitcast %315 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %317 = llvm.ptrtoint %316 : !llvm.ptr<i1> to i64
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.sub %313, %318  : i64
    %320 = llvm.add %317, %319  : i64
    %321 = llvm.urem %320, %313  : i64
    %322 = llvm.sub %320, %321  : i64
    %323 = llvm.inttoptr %322 : i64 to !llvm.ptr<i1>
    %324 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %325 = llvm.insertvalue %316, %324[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %323, %325[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.mlir.constant(0 : index) : i64
    %328 = llvm.insertvalue %327, %326[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %303, %328[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %304, %329[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.insertvalue %305, %330[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.insertvalue %306, %331[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.insertvalue %308, %332[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.insertvalue %305, %333[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.insertvalue %306, %334[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.insertvalue %307, %335[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.mlir.constant(2 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%337 : i64)
  ^bb49(%340: i64):  // 2 preds: ^bb48, ^bb59
    %341 = llvm.icmp "slt" %340, %338 : i64
    llvm.cond_br %341, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%342 : i64)
  ^bb51(%345: i64):  // 2 preds: ^bb50, ^bb58
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.mlir.constant(4 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%347 : i64)
  ^bb53(%350: i64):  // 2 preds: ^bb52, ^bb57
    %351 = llvm.icmp "slt" %350, %348 : i64
    llvm.cond_br %351, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%352 : i64)
  ^bb55(%355: i64):  // 2 preds: ^bb54, ^bb56
    %356 = llvm.icmp "slt" %355, %353 : i64
    llvm.cond_br %356, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %357 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.mlir.constant(4 : index) : i64
    %359 = llvm.mul %60, %358  : i64
    %360 = llvm.mlir.constant(4 : index) : i64
    %361 = llvm.mul %345, %360  : i64
    %362 = llvm.add %359, %361  : i64
    %363 = llvm.add %362, %350  : i64
    %364 = llvm.add %363, %355  : i64
    %365 = llvm.getelementptr %357[%364] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %366 = llvm.load %365 : !llvm.ptr<i32>
    %367 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.mlir.constant(4 : index) : i64
    %369 = llvm.mul %340, %368  : i64
    %370 = llvm.mlir.constant(4 : index) : i64
    %371 = llvm.mul %345, %370  : i64
    %372 = llvm.add %369, %371  : i64
    %373 = llvm.add %372, %350  : i64
    %374 = llvm.add %373, %355  : i64
    %375 = llvm.getelementptr %367[%374] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %376 = llvm.load %375 : !llvm.ptr<i32>
    %377 = llvm.icmp "sgt" %366, %376 : i32
    %378 = llvm.extractvalue %336[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.mlir.constant(4 : index) : i64
    %380 = llvm.mul %340, %379  : i64
    %381 = llvm.mlir.constant(4 : index) : i64
    %382 = llvm.mul %345, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.add %383, %350  : i64
    %385 = llvm.add %384, %355  : i64
    %386 = llvm.getelementptr %378[%385] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %377, %386 : !llvm.ptr<i1>
    %387 = llvm.add %355, %354  : i64
    llvm.br ^bb55(%387 : i64)
  ^bb57:  // pred: ^bb55
    %388 = llvm.add %350, %349  : i64
    llvm.br ^bb53(%388 : i64)
  ^bb58:  // pred: ^bb53
    %389 = llvm.add %345, %344  : i64
    llvm.br ^bb51(%389 : i64)
  ^bb59:  // pred: ^bb51
    %390 = llvm.add %340, %339  : i64
    llvm.br ^bb49(%390 : i64)
  ^bb60:  // pred: ^bb49
    %391 = llvm.mlir.constant(5 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.mlir.constant(4 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.constant(4 : index) : i64
    %397 = llvm.mlir.constant(20 : index) : i64
    %398 = llvm.mlir.null : !llvm.ptr<i32>
    %399 = llvm.getelementptr %398[%397] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %400 = llvm.ptrtoint %399 : !llvm.ptr<i32> to i64
    %401 = llvm.mlir.constant(16 : index) : i64
    %402 = llvm.add %400, %401  : i64
    %403 = llvm.call @malloc(%402) : (i64) -> !llvm.ptr<i8>
    %404 = llvm.bitcast %403 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %405 = llvm.ptrtoint %404 : !llvm.ptr<i32> to i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.sub %401, %406  : i64
    %408 = llvm.add %405, %407  : i64
    %409 = llvm.urem %408, %401  : i64
    %410 = llvm.sub %408, %409  : i64
    %411 = llvm.inttoptr %410 : i64 to !llvm.ptr<i32>
    %412 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %413 = llvm.insertvalue %404, %412[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.insertvalue %411, %413[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.insertvalue %415, %414[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %391, %416[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.insertvalue %392, %417[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.insertvalue %393, %418[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.insertvalue %394, %419[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %396, %420[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.insertvalue %393, %421[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.insertvalue %394, %422[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.insertvalue %395, %423[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.mlir.constant(0 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%425 : i64)
  ^bb61(%428: i64):  // 2 preds: ^bb60, ^bb71
    %429 = llvm.icmp "slt" %428, %426 : i64
    llvm.cond_br %429, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %430 = llvm.mlir.constant(0 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    %432 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%430 : i64)
  ^bb63(%433: i64):  // 2 preds: ^bb62, ^bb70
    %434 = llvm.icmp "slt" %433, %431 : i64
    llvm.cond_br %434, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %435 = llvm.mlir.constant(0 : index) : i64
    %436 = llvm.mlir.constant(4 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%435 : i64)
  ^bb65(%438: i64):  // 2 preds: ^bb64, ^bb69
    %439 = llvm.icmp "slt" %438, %436 : i64
    llvm.cond_br %439, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%440 : i64)
  ^bb67(%443: i64):  // 2 preds: ^bb66, ^bb68
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %445 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.mlir.constant(4 : index) : i64
    %447 = llvm.mul %428, %446  : i64
    %448 = llvm.mlir.constant(4 : index) : i64
    %449 = llvm.mul %433, %448  : i64
    %450 = llvm.add %447, %449  : i64
    %451 = llvm.add %450, %438  : i64
    %452 = llvm.add %451, %443  : i64
    %453 = llvm.getelementptr %445[%452] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %454 = llvm.load %453 : !llvm.ptr<i32>
    %455 = llvm.extractvalue %424[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.mlir.constant(4 : index) : i64
    %457 = llvm.mul %428, %456  : i64
    %458 = llvm.mlir.constant(4 : index) : i64
    %459 = llvm.mul %433, %458  : i64
    %460 = llvm.add %457, %459  : i64
    %461 = llvm.add %460, %438  : i64
    %462 = llvm.add %461, %443  : i64
    %463 = llvm.getelementptr %455[%462] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %454, %463 : !llvm.ptr<i32>
    %464 = llvm.add %443, %442  : i64
    llvm.br ^bb67(%464 : i64)
  ^bb69:  // pred: ^bb67
    %465 = llvm.add %438, %437  : i64
    llvm.br ^bb65(%465 : i64)
  ^bb70:  // pred: ^bb65
    %466 = llvm.add %433, %432  : i64
    llvm.br ^bb63(%466 : i64)
  ^bb71:  // pred: ^bb63
    %467 = llvm.add %428, %427  : i64
    llvm.br ^bb61(%467 : i64)
  ^bb72:  // pred: ^bb61
    %468 = llvm.mlir.constant(0 : index) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%468 : i64)
  ^bb73(%471: i64):  // 2 preds: ^bb72, ^bb83
    %472 = llvm.icmp "slt" %471, %469 : i64
    llvm.cond_br %472, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %473 = llvm.mlir.constant(0 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%473 : i64)
  ^bb75(%476: i64):  // 2 preds: ^bb74, ^bb82
    %477 = llvm.icmp "slt" %476, %474 : i64
    llvm.cond_br %477, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.mlir.constant(4 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%478 : i64)
  ^bb77(%481: i64):  // 2 preds: ^bb76, ^bb81
    %482 = llvm.icmp "slt" %481, %479 : i64
    llvm.cond_br %482, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%483 : i64)
  ^bb79(%486: i64):  // 2 preds: ^bb78, ^bb80
    %487 = llvm.icmp "slt" %486, %484 : i64
    llvm.cond_br %487, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %488 = llvm.mlir.constant(1 : index) : i64
    %489 = llvm.add %471, %488  : i64
    %490 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.mlir.constant(4 : index) : i64
    %492 = llvm.mul %471, %491  : i64
    %493 = llvm.mlir.constant(4 : index) : i64
    %494 = llvm.mul %476, %493  : i64
    %495 = llvm.add %492, %494  : i64
    %496 = llvm.add %495, %481  : i64
    %497 = llvm.add %496, %486  : i64
    %498 = llvm.getelementptr %490[%497] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %499 = llvm.load %498 : !llvm.ptr<i32>
    %500 = llvm.extractvalue %424[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.mlir.constant(4 : index) : i64
    %502 = llvm.mul %489, %501  : i64
    %503 = llvm.mlir.constant(4 : index) : i64
    %504 = llvm.mul %476, %503  : i64
    %505 = llvm.add %502, %504  : i64
    %506 = llvm.add %505, %481  : i64
    %507 = llvm.add %506, %486  : i64
    %508 = llvm.getelementptr %500[%507] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %499, %508 : !llvm.ptr<i32>
    %509 = llvm.add %486, %485  : i64
    llvm.br ^bb79(%509 : i64)
  ^bb81:  // pred: ^bb79
    %510 = llvm.add %481, %480  : i64
    llvm.br ^bb77(%510 : i64)
  ^bb82:  // pred: ^bb77
    %511 = llvm.add %476, %475  : i64
    llvm.br ^bb75(%511 : i64)
  ^bb83:  // pred: ^bb75
    %512 = llvm.add %471, %470  : i64
    llvm.br ^bb73(%512 : i64)
  ^bb84:  // pred: ^bb73
    %513 = llvm.mlir.constant(0 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    %515 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%513 : i64)
  ^bb85(%516: i64):  // 2 preds: ^bb84, ^bb95
    %517 = llvm.icmp "slt" %516, %514 : i64
    llvm.cond_br %517, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %518 = llvm.mlir.constant(0 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%518 : i64)
  ^bb87(%521: i64):  // 2 preds: ^bb86, ^bb94
    %522 = llvm.icmp "slt" %521, %519 : i64
    llvm.cond_br %522, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %523 = llvm.mlir.constant(0 : index) : i64
    %524 = llvm.mlir.constant(4 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%523 : i64)
  ^bb89(%526: i64):  // 2 preds: ^bb88, ^bb93
    %527 = llvm.icmp "slt" %526, %524 : i64
    llvm.cond_br %527, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %528 = llvm.mlir.constant(0 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%528 : i64)
  ^bb91(%531: i64):  // 2 preds: ^bb90, ^bb92
    %532 = llvm.icmp "slt" %531, %529 : i64
    llvm.cond_br %532, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %533 = llvm.mlir.constant(2 : index) : i64
    %534 = llvm.add %516, %533  : i64
    %535 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %536 = llvm.mlir.constant(4 : index) : i64
    %537 = llvm.mul %516, %536  : i64
    %538 = llvm.mlir.constant(4 : index) : i64
    %539 = llvm.mul %521, %538  : i64
    %540 = llvm.add %537, %539  : i64
    %541 = llvm.add %540, %526  : i64
    %542 = llvm.add %541, %531  : i64
    %543 = llvm.getelementptr %535[%542] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %544 = llvm.load %543 : !llvm.ptr<i32>
    %545 = llvm.extractvalue %424[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.mlir.constant(4 : index) : i64
    %547 = llvm.mul %534, %546  : i64
    %548 = llvm.mlir.constant(4 : index) : i64
    %549 = llvm.mul %521, %548  : i64
    %550 = llvm.add %547, %549  : i64
    %551 = llvm.add %550, %526  : i64
    %552 = llvm.add %551, %531  : i64
    %553 = llvm.getelementptr %545[%552] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %544, %553 : !llvm.ptr<i32>
    %554 = llvm.add %531, %530  : i64
    llvm.br ^bb91(%554 : i64)
  ^bb93:  // pred: ^bb91
    %555 = llvm.add %526, %525  : i64
    llvm.br ^bb89(%555 : i64)
  ^bb94:  // pred: ^bb89
    %556 = llvm.add %521, %520  : i64
    llvm.br ^bb87(%556 : i64)
  ^bb95:  // pred: ^bb87
    %557 = llvm.add %516, %515  : i64
    llvm.br ^bb85(%557 : i64)
  ^bb96:  // pred: ^bb85
    %558 = llvm.mlir.constant(0 : index) : i64
    %559 = llvm.mlir.constant(2 : index) : i64
    %560 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%558 : i64)
  ^bb97(%561: i64):  // 2 preds: ^bb96, ^bb107
    %562 = llvm.icmp "slt" %561, %559 : i64
    llvm.cond_br %562, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %563 = llvm.mlir.constant(0 : index) : i64
    %564 = llvm.mlir.constant(1 : index) : i64
    %565 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%563 : i64)
  ^bb99(%566: i64):  // 2 preds: ^bb98, ^bb106
    %567 = llvm.icmp "slt" %566, %564 : i64
    llvm.cond_br %567, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %568 = llvm.mlir.constant(0 : index) : i64
    %569 = llvm.mlir.constant(4 : index) : i64
    %570 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%568 : i64)
  ^bb101(%571: i64):  // 2 preds: ^bb100, ^bb105
    %572 = llvm.icmp "slt" %571, %569 : i64
    llvm.cond_br %572, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %573 = llvm.mlir.constant(0 : index) : i64
    %574 = llvm.mlir.constant(1 : index) : i64
    %575 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%573 : i64)
  ^bb103(%576: i64):  // 2 preds: ^bb102, ^bb104
    %577 = llvm.icmp "slt" %576, %574 : i64
    llvm.cond_br %577, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %578 = llvm.mlir.constant(3 : index) : i64
    %579 = llvm.add %561, %578  : i64
    %580 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %581 = llvm.mlir.constant(4 : index) : i64
    %582 = llvm.mul %561, %581  : i64
    %583 = llvm.mlir.constant(4 : index) : i64
    %584 = llvm.mul %566, %583  : i64
    %585 = llvm.add %582, %584  : i64
    %586 = llvm.add %585, %571  : i64
    %587 = llvm.add %586, %576  : i64
    %588 = llvm.getelementptr %580[%587] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %589 = llvm.load %588 : !llvm.ptr<i32>
    %590 = llvm.extractvalue %424[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.mlir.constant(4 : index) : i64
    %592 = llvm.mul %579, %591  : i64
    %593 = llvm.mlir.constant(4 : index) : i64
    %594 = llvm.mul %566, %593  : i64
    %595 = llvm.add %592, %594  : i64
    %596 = llvm.add %595, %571  : i64
    %597 = llvm.add %596, %576  : i64
    %598 = llvm.getelementptr %590[%597] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %589, %598 : !llvm.ptr<i32>
    %599 = llvm.add %576, %575  : i64
    llvm.br ^bb103(%599 : i64)
  ^bb105:  // pred: ^bb103
    %600 = llvm.add %571, %570  : i64
    llvm.br ^bb101(%600 : i64)
  ^bb106:  // pred: ^bb101
    %601 = llvm.add %566, %565  : i64
    llvm.br ^bb99(%601 : i64)
  ^bb107:  // pred: ^bb99
    %602 = llvm.add %561, %560  : i64
    llvm.br ^bb97(%602 : i64)
  ^bb108:  // pred: ^bb97
    %603 = llvm.mlir.constant(5 : index) : i64
    %604 = llvm.mlir.constant(1 : index) : i64
    %605 = llvm.mlir.constant(1 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    %608 = llvm.mlir.null : !llvm.ptr<i32>
    %609 = llvm.getelementptr %608[%603] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %610 = llvm.ptrtoint %609 : !llvm.ptr<i32> to i64
    %611 = llvm.mlir.constant(16 : index) : i64
    %612 = llvm.add %610, %611  : i64
    %613 = llvm.call @malloc(%612) : (i64) -> !llvm.ptr<i8>
    %614 = llvm.bitcast %613 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %615 = llvm.ptrtoint %614 : !llvm.ptr<i32> to i64
    %616 = llvm.mlir.constant(1 : index) : i64
    %617 = llvm.sub %611, %616  : i64
    %618 = llvm.add %615, %617  : i64
    %619 = llvm.urem %618, %611  : i64
    %620 = llvm.sub %618, %619  : i64
    %621 = llvm.inttoptr %620 : i64 to !llvm.ptr<i32>
    %622 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %623 = llvm.insertvalue %614, %622[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %624 = llvm.insertvalue %621, %623[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %625 = llvm.mlir.constant(0 : index) : i64
    %626 = llvm.insertvalue %625, %624[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %627 = llvm.insertvalue %603, %626[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %628 = llvm.insertvalue %604, %627[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %629 = llvm.insertvalue %605, %628[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %630 = llvm.insertvalue %606, %629[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %631 = llvm.insertvalue %604, %630[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %632 = llvm.insertvalue %605, %631[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %633 = llvm.insertvalue %606, %632[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %634 = llvm.insertvalue %607, %633[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %635 = llvm.mlir.constant(0 : index) : i64
    %636 = llvm.mlir.constant(5 : index) : i64
    %637 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%635 : i64)
  ^bb109(%638: i64):  // 2 preds: ^bb108, ^bb119
    %639 = llvm.icmp "slt" %638, %636 : i64
    llvm.cond_br %639, ^bb110, ^bb120
  ^bb110:  // pred: ^bb109
    %640 = llvm.mlir.constant(0 : index) : i64
    %641 = llvm.mlir.constant(1 : index) : i64
    %642 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb111(%640 : i64)
  ^bb111(%643: i64):  // 2 preds: ^bb110, ^bb118
    %644 = llvm.icmp "slt" %643, %641 : i64
    llvm.cond_br %644, ^bb112, ^bb119
  ^bb112:  // pred: ^bb111
    %645 = llvm.mlir.constant(0 : index) : i64
    %646 = llvm.mlir.constant(1 : index) : i64
    %647 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb113(%645 : i64)
  ^bb113(%648: i64):  // 2 preds: ^bb112, ^bb117
    %649 = llvm.icmp "slt" %648, %646 : i64
    llvm.cond_br %649, ^bb114, ^bb118
  ^bb114:  // pred: ^bb113
    %650 = llvm.mlir.constant(0 : index) : i64
    %651 = llvm.mlir.constant(1 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%650 : i64)
  ^bb115(%653: i64):  // 2 preds: ^bb114, ^bb116
    %654 = llvm.icmp "slt" %653, %651 : i64
    llvm.cond_br %654, ^bb116, ^bb117
  ^bb116:  // pred: ^bb115
    %655 = llvm.extractvalue %424[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %656 = llvm.mlir.constant(4 : index) : i64
    %657 = llvm.mul %638, %656  : i64
    %658 = llvm.mlir.constant(4 : index) : i64
    %659 = llvm.mul %643, %658  : i64
    %660 = llvm.add %657, %659  : i64
    %661 = llvm.add %660, %648  : i64
    %662 = llvm.add %661, %653  : i64
    %663 = llvm.getelementptr %655[%662] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %664 = llvm.load %663 : !llvm.ptr<i32>
    %665 = llvm.extractvalue %634[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %666 = llvm.add %638, %643  : i64
    %667 = llvm.add %666, %648  : i64
    %668 = llvm.add %667, %653  : i64
    %669 = llvm.getelementptr %665[%668] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %664, %669 : !llvm.ptr<i32>
    %670 = llvm.add %653, %652  : i64
    llvm.br ^bb115(%670 : i64)
  ^bb117:  // pred: ^bb115
    %671 = llvm.add %648, %647  : i64
    llvm.br ^bb113(%671 : i64)
  ^bb118:  // pred: ^bb113
    %672 = llvm.add %643, %642  : i64
    llvm.br ^bb111(%672 : i64)
  ^bb119:  // pred: ^bb111
    %673 = llvm.add %638, %637  : i64
    llvm.br ^bb109(%673 : i64)
  ^bb120:  // pred: ^bb109
    %674 = llvm.mlir.constant(5 : index) : i64
    %675 = llvm.mlir.constant(1 : index) : i64
    %676 = llvm.mlir.constant(4 : index) : i64
    %677 = llvm.mlir.constant(1 : index) : i64
    %678 = llvm.mlir.constant(1 : index) : i64
    %679 = llvm.mlir.constant(4 : index) : i64
    %680 = llvm.mlir.constant(20 : index) : i64
    %681 = llvm.mlir.null : !llvm.ptr<i32>
    %682 = llvm.getelementptr %681[%680] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %683 = llvm.ptrtoint %682 : !llvm.ptr<i32> to i64
    %684 = llvm.mlir.constant(16 : index) : i64
    %685 = llvm.add %683, %684  : i64
    %686 = llvm.call @malloc(%685) : (i64) -> !llvm.ptr<i8>
    %687 = llvm.bitcast %686 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %688 = llvm.ptrtoint %687 : !llvm.ptr<i32> to i64
    %689 = llvm.mlir.constant(1 : index) : i64
    %690 = llvm.sub %684, %689  : i64
    %691 = llvm.add %688, %690  : i64
    %692 = llvm.urem %691, %684  : i64
    %693 = llvm.sub %691, %692  : i64
    %694 = llvm.inttoptr %693 : i64 to !llvm.ptr<i32>
    %695 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %696 = llvm.insertvalue %687, %695[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %697 = llvm.insertvalue %694, %696[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %698 = llvm.mlir.constant(0 : index) : i64
    %699 = llvm.insertvalue %698, %697[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %700 = llvm.insertvalue %674, %699[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %701 = llvm.insertvalue %675, %700[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %702 = llvm.insertvalue %676, %701[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %703 = llvm.insertvalue %677, %702[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %704 = llvm.insertvalue %679, %703[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %705 = llvm.insertvalue %676, %704[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %706 = llvm.insertvalue %677, %705[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %707 = llvm.insertvalue %678, %706[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %708 = llvm.mlir.constant(0 : index) : i64
    %709 = llvm.mlir.constant(5 : index) : i64
    %710 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb121(%708 : i64)
  ^bb121(%711: i64):  // 2 preds: ^bb120, ^bb131
    %712 = llvm.icmp "slt" %711, %709 : i64
    llvm.cond_br %712, ^bb122, ^bb132
  ^bb122:  // pred: ^bb121
    %713 = llvm.mlir.constant(0 : index) : i64
    %714 = llvm.mlir.constant(1 : index) : i64
    %715 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb123(%713 : i64)
  ^bb123(%716: i64):  // 2 preds: ^bb122, ^bb130
    %717 = llvm.icmp "slt" %716, %714 : i64
    llvm.cond_br %717, ^bb124, ^bb131
  ^bb124:  // pred: ^bb123
    %718 = llvm.mlir.constant(0 : index) : i64
    %719 = llvm.mlir.constant(4 : index) : i64
    %720 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb125(%718 : i64)
  ^bb125(%721: i64):  // 2 preds: ^bb124, ^bb129
    %722 = llvm.icmp "slt" %721, %719 : i64
    llvm.cond_br %722, ^bb126, ^bb130
  ^bb126:  // pred: ^bb125
    %723 = llvm.mlir.constant(0 : index) : i64
    %724 = llvm.mlir.constant(1 : index) : i64
    %725 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb127(%723 : i64)
  ^bb127(%726: i64):  // 2 preds: ^bb126, ^bb128
    %727 = llvm.icmp "slt" %726, %724 : i64
    llvm.cond_br %727, ^bb128, ^bb129
  ^bb128:  // pred: ^bb127
    %728 = llvm.extractvalue %424[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %729 = llvm.mlir.constant(4 : index) : i64
    %730 = llvm.mul %711, %729  : i64
    %731 = llvm.mlir.constant(4 : index) : i64
    %732 = llvm.mul %716, %731  : i64
    %733 = llvm.add %730, %732  : i64
    %734 = llvm.add %733, %721  : i64
    %735 = llvm.add %734, %726  : i64
    %736 = llvm.getelementptr %728[%735] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %737 = llvm.load %736 : !llvm.ptr<i32>
    %738 = llvm.extractvalue %634[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %739 = llvm.add %711, %716  : i64
    %740 = llvm.add %739, %60  : i64
    %741 = llvm.add %740, %726  : i64
    %742 = llvm.getelementptr %738[%741] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %743 = llvm.load %742 : !llvm.ptr<i32>
    %744 = llvm.sub %737, %743  : i32
    %745 = llvm.extractvalue %707[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %746 = llvm.mlir.constant(4 : index) : i64
    %747 = llvm.mul %711, %746  : i64
    %748 = llvm.mlir.constant(4 : index) : i64
    %749 = llvm.mul %716, %748  : i64
    %750 = llvm.add %747, %749  : i64
    %751 = llvm.add %750, %721  : i64
    %752 = llvm.add %751, %726  : i64
    %753 = llvm.getelementptr %745[%752] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %744, %753 : !llvm.ptr<i32>
    %754 = llvm.add %726, %725  : i64
    llvm.br ^bb127(%754 : i64)
  ^bb129:  // pred: ^bb127
    %755 = llvm.add %721, %720  : i64
    llvm.br ^bb125(%755 : i64)
  ^bb130:  // pred: ^bb125
    %756 = llvm.add %716, %715  : i64
    llvm.br ^bb123(%756 : i64)
  ^bb131:  // pred: ^bb123
    %757 = llvm.add %711, %710  : i64
    llvm.br ^bb121(%757 : i64)
  ^bb132:  // pred: ^bb121
    %758 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %759 = llvm.insertvalue %336, %758[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %760 = llvm.insertvalue %707, %759[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %760 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v11_0", "v10_0", "v9_0", "v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v1_0", "v0_0"]} {
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
    %48 = llvm.load %arg5 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %49 = llvm.extractvalue %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.extractvalue %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.extractvalue %48[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.extractvalue %48[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.extractvalue %48[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.extractvalue %48[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.extractvalue %48[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.extractvalue %48[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.extractvalue %48[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.extractvalue %48[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %60, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %170 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %171 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %172 = llvm.call @omTensorGetDataPtr(%169) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %173 = llvm.bitcast %172 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %174 = llvm.insertvalue %173, %171[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.insertvalue %173, %174[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.mlir.constant(0 : i64) : i64
    %177 = llvm.insertvalue %176, %175[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.call @omTensorGetShape(%169) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %179 = llvm.call @omTensorGetStrides(%169) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %180 = llvm.mlir.constant(0 : i64) : i64
    %181 = llvm.getelementptr %178[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %182 = llvm.load %181 : !llvm.ptr<i64>
    %183 = llvm.insertvalue %182, %177[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.getelementptr %179[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %185 = llvm.load %184 : !llvm.ptr<i64>
    %186 = llvm.insertvalue %185, %183[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.mlir.constant(1 : i64) : i64
    %188 = llvm.getelementptr %178[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %189 = llvm.load %188 : !llvm.ptr<i64>
    %190 = llvm.insertvalue %189, %186[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.getelementptr %179[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %192 = llvm.load %191 : !llvm.ptr<i64>
    %193 = llvm.insertvalue %192, %190[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.mlir.constant(2 : i64) : i64
    %195 = llvm.getelementptr %178[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %196 = llvm.load %195 : !llvm.ptr<i64>
    %197 = llvm.insertvalue %196, %193[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.getelementptr %179[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %199 = llvm.load %198 : !llvm.ptr<i64>
    %200 = llvm.insertvalue %199, %197[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.mlir.constant(3 : i64) : i64
    %202 = llvm.getelementptr %178[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %203 = llvm.load %202 : !llvm.ptr<i64>
    %204 = llvm.insertvalue %203, %200[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.getelementptr %179[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %206 = llvm.load %205 : !llvm.ptr<i64>
    %207 = llvm.insertvalue %206, %204[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %207, %170 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %129, %170) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %208 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %209 = llvm.extractvalue %208[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %210 = llvm.extractvalue %208[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %211 = llvm.mlir.constant(2 : i64) : i64
    %212 = llvm.mlir.constant(16 : i64) : i64
    %213 = llvm.call @malloc(%212) : (i64) -> !llvm.ptr<i8>
    %214 = llvm.bitcast %213 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %215 = llvm.mlir.constant(4 : i64) : i64
    %216 = llvm.call @omTensorCreateUntyped(%215) : (i64) -> !llvm.ptr<i8>
    %217 = llvm.mlir.constant(1 : i64) : i64
    %218 = llvm.extractvalue %209[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.bitcast %218 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %220 = llvm.extractvalue %209[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.bitcast %220 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%216, %217, %219, %221) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %222 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%216, %222) : (!llvm.ptr<i8>, i64) -> ()
    %223 = llvm.call @omTensorGetShape(%216) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %224 = llvm.call @omTensorGetStrides(%216) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %225 = llvm.mlir.constant(0 : i64) : i64
    %226 = llvm.extractvalue %209[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.getelementptr %223[%225] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %226, %227 : !llvm.ptr<i64>
    %228 = llvm.extractvalue %209[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.getelementptr %224[%225] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %228, %229 : !llvm.ptr<i64>
    %230 = llvm.mlir.constant(1 : i64) : i64
    %231 = llvm.extractvalue %209[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.getelementptr %223[%230] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %231, %232 : !llvm.ptr<i64>
    %233 = llvm.extractvalue %209[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.getelementptr %224[%230] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %233, %234 : !llvm.ptr<i64>
    %235 = llvm.mlir.constant(2 : i64) : i64
    %236 = llvm.extractvalue %209[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.getelementptr %223[%235] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %236, %237 : !llvm.ptr<i64>
    %238 = llvm.extractvalue %209[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.getelementptr %224[%235] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %238, %239 : !llvm.ptr<i64>
    %240 = llvm.mlir.constant(3 : i64) : i64
    %241 = llvm.extractvalue %209[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.getelementptr %223[%240] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %241, %242 : !llvm.ptr<i64>
    %243 = llvm.extractvalue %209[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.getelementptr %224[%240] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %243, %244 : !llvm.ptr<i64>
    %245 = llvm.mlir.constant(0 : i64) : i64
    %246 = llvm.getelementptr %214[%245] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %216, %246 : !llvm.ptr<ptr<i8>>
    %247 = llvm.mlir.constant(4 : i64) : i64
    %248 = llvm.call @omTensorCreateUntyped(%247) : (i64) -> !llvm.ptr<i8>
    %249 = llvm.mlir.constant(1 : i64) : i64
    %250 = llvm.extractvalue %210[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.bitcast %250 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %252 = llvm.extractvalue %210[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.bitcast %252 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%248, %249, %251, %253) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %254 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%248, %254) : (!llvm.ptr<i8>, i64) -> ()
    %255 = llvm.call @omTensorGetShape(%248) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %256 = llvm.call @omTensorGetStrides(%248) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %257 = llvm.mlir.constant(0 : i64) : i64
    %258 = llvm.extractvalue %210[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.getelementptr %255[%257] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %258, %259 : !llvm.ptr<i64>
    %260 = llvm.extractvalue %210[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.getelementptr %256[%257] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %260, %261 : !llvm.ptr<i64>
    %262 = llvm.mlir.constant(1 : i64) : i64
    %263 = llvm.extractvalue %210[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.getelementptr %255[%262] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %263, %264 : !llvm.ptr<i64>
    %265 = llvm.extractvalue %210[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.getelementptr %256[%262] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %265, %266 : !llvm.ptr<i64>
    %267 = llvm.mlir.constant(2 : i64) : i64
    %268 = llvm.extractvalue %210[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.getelementptr %255[%267] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %268, %269 : !llvm.ptr<i64>
    %270 = llvm.extractvalue %210[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.getelementptr %256[%267] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %270, %271 : !llvm.ptr<i64>
    %272 = llvm.mlir.constant(3 : i64) : i64
    %273 = llvm.extractvalue %210[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.getelementptr %255[%272] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %273, %274 : !llvm.ptr<i64>
    %275 = llvm.extractvalue %210[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.getelementptr %256[%272] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %275, %276 : !llvm.ptr<i64>
    %277 = llvm.mlir.constant(1 : i64) : i64
    %278 = llvm.getelementptr %214[%277] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %248, %278 : !llvm.ptr<ptr<i8>>
    %279 = llvm.call @omTensorListCreate(%214, %211, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %279 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<354 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<354 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

