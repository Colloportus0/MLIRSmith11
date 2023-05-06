module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 4] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 4] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 4] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 4] , \22name\22 : \22v11_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [4 , 1 , 1 , 4] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_8(dense<3> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<[4, 1, 1, 4]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[4, 1, 1, 4]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr<i32>, %arg34: !llvm.ptr<i32>, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64, %arg44: !llvm.ptr<i32>, %arg45: !llvm.ptr<i32>, %arg46: i64, %arg47: i64, %arg48: i64, %arg49: i64, %arg50: i64, %arg51: i64, %arg52: i64, %arg53: i64, %arg54: i64, %arg55: !llvm.ptr<i32>, %arg56: !llvm.ptr<i32>, %arg57: i64, %arg58: i64, %arg59: i64, %arg60: i64, %arg61: i64, %arg62: i64, %arg63: i64, %arg64: i64, %arg65: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v8_0", "v7_0", "v0_0", "v5_0", "v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v11_0", "v2_0"]} {
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
    %60 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %61 = llvm.insertvalue %arg55, %60[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %arg56, %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %arg57, %62[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %arg58, %63[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %arg62, %64[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %arg59, %65[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %arg63, %66[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %arg60, %67[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %arg64, %68[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %arg61, %69[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %arg65, %70[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(1 : i64) : i64
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %75 = llvm.bitcast %74 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %76 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %77 = llvm.insertvalue %75, %76[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.insertvalue %75, %77[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.insertvalue %79, %78[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.mlir.constant(4 : index) : i64
    %82 = llvm.insertvalue %81, %80[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.insertvalue %83, %82[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %86 = llvm.bitcast %85 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %87 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %88 = llvm.insertvalue %86, %87[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %89 = llvm.insertvalue %86, %88[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.insertvalue %90, %89[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %92 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %93 = llvm.bitcast %92 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %94 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %95 = llvm.insertvalue %93, %94[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.insertvalue %93, %95[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.insertvalue %97, %96[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.mlir.constant(4 : index) : i64
    %100 = llvm.insertvalue %99, %98[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.insertvalue %101, %100[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %104 = llvm.bitcast %103 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %105 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %106 = llvm.insertvalue %104, %105[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %104, %106[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.insertvalue %108, %107[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.insertvalue %110, %109[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.insertvalue %112, %111[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.insertvalue %114, %113[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.insertvalue %116, %115[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.insertvalue %118, %117[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.insertvalue %120, %119[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.insertvalue %122, %121[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.insertvalue %124, %123[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(4 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(4 : index) : i64
    %132 = llvm.mlir.constant(4 : index) : i64
    %133 = llvm.mlir.constant(4 : index) : i64
    %134 = llvm.mlir.null : !llvm.ptr<i32>
    %135 = llvm.getelementptr %134[%133] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %136 = llvm.ptrtoint %135 : !llvm.ptr<i32> to i64
    %137 = llvm.mlir.constant(16 : index) : i64
    %138 = llvm.add %136, %137  : i64
    %139 = llvm.call @malloc(%138) : (i64) -> !llvm.ptr<i8>
    %140 = llvm.bitcast %139 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %141 = llvm.ptrtoint %140 : !llvm.ptr<i32> to i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.sub %137, %142  : i64
    %144 = llvm.add %141, %143  : i64
    %145 = llvm.urem %144, %137  : i64
    %146 = llvm.sub %144, %145  : i64
    %147 = llvm.inttoptr %146 : i64 to !llvm.ptr<i32>
    %148 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %149 = llvm.insertvalue %140, %148[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %147, %149[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.insertvalue %151, %150[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %126, %152[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %127, %153[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %128, %154[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %129, %155[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %132, %156[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %131, %157[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %129, %158[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %130, %159[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%161 : i64)
  ^bb1(%164: i64):  // 2 preds: ^bb0, ^bb11
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%166 : i64)
  ^bb3(%169: i64):  // 2 preds: ^bb2, ^bb10
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%171 : i64)
  ^bb5(%174: i64):  // 2 preds: ^bb4, ^bb9
    %175 = llvm.icmp "slt" %174, %172 : i64
    llvm.cond_br %175, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%176 : i64)
  ^bb7(%179: i64):  // 2 preds: ^bb6, ^bb8
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %181 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.add %164, %169  : i64
    %183 = llvm.add %182, %174  : i64
    %184 = llvm.add %183, %179  : i64
    %185 = llvm.getelementptr %181[%184] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %186 = llvm.load %185 : !llvm.ptr<i32>
    %187 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.mlir.constant(4 : index) : i64
    %189 = llvm.mul %164, %188  : i64
    %190 = llvm.mlir.constant(4 : index) : i64
    %191 = llvm.mul %169, %190  : i64
    %192 = llvm.add %189, %191  : i64
    %193 = llvm.mlir.constant(4 : index) : i64
    %194 = llvm.mul %174, %193  : i64
    %195 = llvm.add %192, %194  : i64
    %196 = llvm.add %195, %179  : i64
    %197 = llvm.getelementptr %187[%196] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %186, %197 : !llvm.ptr<i32>
    %198 = llvm.add %179, %178  : i64
    llvm.br ^bb7(%198 : i64)
  ^bb9:  // pred: ^bb7
    %199 = llvm.add %174, %173  : i64
    llvm.br ^bb5(%199 : i64)
  ^bb10:  // pred: ^bb5
    %200 = llvm.add %169, %168  : i64
    llvm.br ^bb3(%200 : i64)
  ^bb11:  // pred: ^bb3
    %201 = llvm.add %164, %163  : i64
    llvm.br ^bb1(%201 : i64)
  ^bb12:  // pred: ^bb1
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%202 : i64)
  ^bb13(%205: i64):  // 2 preds: ^bb12, ^bb23
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%207 : i64)
  ^bb15(%210: i64):  // 2 preds: ^bb14, ^bb22
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%212 : i64)
  ^bb17(%215: i64):  // 2 preds: ^bb16, ^bb21
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%217 : i64)
  ^bb19(%220: i64):  // 2 preds: ^bb18, ^bb20
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.add %220, %222  : i64
    %224 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.add %205, %210  : i64
    %226 = llvm.add %225, %215  : i64
    %227 = llvm.add %226, %220  : i64
    %228 = llvm.getelementptr %224[%227] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %229 = llvm.load %228 : !llvm.ptr<i32>
    %230 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.mlir.constant(4 : index) : i64
    %232 = llvm.mul %205, %231  : i64
    %233 = llvm.mlir.constant(4 : index) : i64
    %234 = llvm.mul %210, %233  : i64
    %235 = llvm.add %232, %234  : i64
    %236 = llvm.mlir.constant(4 : index) : i64
    %237 = llvm.mul %215, %236  : i64
    %238 = llvm.add %235, %237  : i64
    %239 = llvm.add %238, %223  : i64
    %240 = llvm.getelementptr %230[%239] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %229, %240 : !llvm.ptr<i32>
    %241 = llvm.add %220, %219  : i64
    llvm.br ^bb19(%241 : i64)
  ^bb21:  // pred: ^bb19
    %242 = llvm.add %215, %214  : i64
    llvm.br ^bb17(%242 : i64)
  ^bb22:  // pred: ^bb17
    %243 = llvm.add %210, %209  : i64
    llvm.br ^bb15(%243 : i64)
  ^bb23:  // pred: ^bb15
    %244 = llvm.add %205, %204  : i64
    llvm.br ^bb13(%244 : i64)
  ^bb24:  // pred: ^bb13
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%245 : i64)
  ^bb25(%248: i64):  // 2 preds: ^bb24, ^bb35
    %249 = llvm.icmp "slt" %248, %246 : i64
    llvm.cond_br %249, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%250 : i64)
  ^bb27(%253: i64):  // 2 preds: ^bb26, ^bb34
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %255 = llvm.mlir.constant(0 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%255 : i64)
  ^bb29(%258: i64):  // 2 preds: ^bb28, ^bb33
    %259 = llvm.icmp "slt" %258, %256 : i64
    llvm.cond_br %259, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %260 = llvm.mlir.constant(0 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%260 : i64)
  ^bb31(%263: i64):  // 2 preds: ^bb30, ^bb32
    %264 = llvm.icmp "slt" %263, %261 : i64
    llvm.cond_br %264, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %265 = llvm.mlir.constant(2 : index) : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.add %248, %253  : i64
    %269 = llvm.add %268, %258  : i64
    %270 = llvm.add %269, %263  : i64
    %271 = llvm.getelementptr %267[%270] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %272 = llvm.load %271 : !llvm.ptr<i32>
    %273 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.mlir.constant(4 : index) : i64
    %275 = llvm.mul %248, %274  : i64
    %276 = llvm.mlir.constant(4 : index) : i64
    %277 = llvm.mul %253, %276  : i64
    %278 = llvm.add %275, %277  : i64
    %279 = llvm.mlir.constant(4 : index) : i64
    %280 = llvm.mul %258, %279  : i64
    %281 = llvm.add %278, %280  : i64
    %282 = llvm.add %281, %266  : i64
    %283 = llvm.getelementptr %273[%282] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %272, %283 : !llvm.ptr<i32>
    %284 = llvm.add %263, %262  : i64
    llvm.br ^bb31(%284 : i64)
  ^bb33:  // pred: ^bb31
    %285 = llvm.add %258, %257  : i64
    llvm.br ^bb29(%285 : i64)
  ^bb34:  // pred: ^bb29
    %286 = llvm.add %253, %252  : i64
    llvm.br ^bb27(%286 : i64)
  ^bb35:  // pred: ^bb27
    %287 = llvm.add %248, %247  : i64
    llvm.br ^bb25(%287 : i64)
  ^bb36:  // pred: ^bb25
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%288 : i64)
  ^bb37(%291: i64):  // 2 preds: ^bb36, ^bb47
    %292 = llvm.icmp "slt" %291, %289 : i64
    llvm.cond_br %292, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%293 : i64)
  ^bb39(%296: i64):  // 2 preds: ^bb38, ^bb46
    %297 = llvm.icmp "slt" %296, %294 : i64
    llvm.cond_br %297, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%298 : i64)
  ^bb41(%301: i64):  // 2 preds: ^bb40, ^bb45
    %302 = llvm.icmp "slt" %301, %299 : i64
    llvm.cond_br %302, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%303 : i64)
  ^bb43(%306: i64):  // 2 preds: ^bb42, ^bb44
    %307 = llvm.icmp "slt" %306, %304 : i64
    llvm.cond_br %307, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %308 = llvm.mlir.constant(3 : index) : i64
    %309 = llvm.add %306, %308  : i64
    %310 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.add %291, %296  : i64
    %312 = llvm.add %311, %301  : i64
    %313 = llvm.add %312, %306  : i64
    %314 = llvm.getelementptr %310[%313] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %315 = llvm.load %314 : !llvm.ptr<i32>
    %316 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.mlir.constant(4 : index) : i64
    %318 = llvm.mul %291, %317  : i64
    %319 = llvm.mlir.constant(4 : index) : i64
    %320 = llvm.mul %296, %319  : i64
    %321 = llvm.add %318, %320  : i64
    %322 = llvm.mlir.constant(4 : index) : i64
    %323 = llvm.mul %301, %322  : i64
    %324 = llvm.add %321, %323  : i64
    %325 = llvm.add %324, %309  : i64
    %326 = llvm.getelementptr %316[%325] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %315, %326 : !llvm.ptr<i32>
    %327 = llvm.add %306, %305  : i64
    llvm.br ^bb43(%327 : i64)
  ^bb45:  // pred: ^bb43
    %328 = llvm.add %301, %300  : i64
    llvm.br ^bb41(%328 : i64)
  ^bb46:  // pred: ^bb41
    %329 = llvm.add %296, %295  : i64
    llvm.br ^bb39(%329 : i64)
  ^bb47:  // pred: ^bb39
    %330 = llvm.add %291, %290  : i64
    llvm.br ^bb37(%330 : i64)
  ^bb48:  // pred: ^bb37
    %331 = llvm.mlir.constant(4 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mlir.constant(4 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(4 : index) : i64
    %337 = llvm.mlir.constant(4 : index) : i64
    %338 = llvm.mlir.constant(16 : index) : i64
    %339 = llvm.mlir.null : !llvm.ptr<i32>
    %340 = llvm.getelementptr %339[%338] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %341 = llvm.ptrtoint %340 : !llvm.ptr<i32> to i64
    %342 = llvm.mlir.constant(16 : index) : i64
    %343 = llvm.add %341, %342  : i64
    %344 = llvm.call @malloc(%343) : (i64) -> !llvm.ptr<i8>
    %345 = llvm.bitcast %344 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %346 = llvm.ptrtoint %345 : !llvm.ptr<i32> to i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.sub %342, %347  : i64
    %349 = llvm.add %346, %348  : i64
    %350 = llvm.urem %349, %342  : i64
    %351 = llvm.sub %349, %350  : i64
    %352 = llvm.inttoptr %351 : i64 to !llvm.ptr<i32>
    %353 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %354 = llvm.insertvalue %345, %353[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %352, %354[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.insertvalue %356, %355[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.insertvalue %331, %357[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.insertvalue %332, %358[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.insertvalue %333, %359[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.insertvalue %334, %360[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.insertvalue %337, %361[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.insertvalue %336, %362[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.insertvalue %334, %363[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.insertvalue %335, %364[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%366 : i64)
  ^bb49(%369: i64):  // 2 preds: ^bb48, ^bb59
    %370 = llvm.icmp "slt" %369, %367 : i64
    llvm.cond_br %370, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %371 = llvm.mlir.constant(0 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%371 : i64)
  ^bb51(%374: i64):  // 2 preds: ^bb50, ^bb58
    %375 = llvm.icmp "slt" %374, %372 : i64
    llvm.cond_br %375, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %376 = llvm.mlir.constant(0 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%376 : i64)
  ^bb53(%379: i64):  // 2 preds: ^bb52, ^bb57
    %380 = llvm.icmp "slt" %379, %377 : i64
    llvm.cond_br %380, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %381 = llvm.mlir.constant(0 : index) : i64
    %382 = llvm.mlir.constant(4 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%381 : i64)
  ^bb55(%384: i64):  // 2 preds: ^bb54, ^bb56
    %385 = llvm.icmp "slt" %384, %382 : i64
    llvm.cond_br %385, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %386 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.mlir.constant(4 : index) : i64
    %388 = llvm.mul %369, %387  : i64
    %389 = llvm.mlir.constant(4 : index) : i64
    %390 = llvm.mul %374, %389  : i64
    %391 = llvm.add %388, %390  : i64
    %392 = llvm.mlir.constant(4 : index) : i64
    %393 = llvm.mul %379, %392  : i64
    %394 = llvm.add %391, %393  : i64
    %395 = llvm.add %394, %384  : i64
    %396 = llvm.getelementptr %386[%395] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %397 = llvm.load %396 : !llvm.ptr<i32>
    %398 = llvm.extractvalue %365[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.mlir.constant(4 : index) : i64
    %400 = llvm.mul %369, %399  : i64
    %401 = llvm.mlir.constant(4 : index) : i64
    %402 = llvm.mul %374, %401  : i64
    %403 = llvm.add %400, %402  : i64
    %404 = llvm.mlir.constant(4 : index) : i64
    %405 = llvm.mul %379, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.add %406, %384  : i64
    %408 = llvm.getelementptr %398[%407] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %397, %408 : !llvm.ptr<i32>
    %409 = llvm.add %384, %383  : i64
    llvm.br ^bb55(%409 : i64)
  ^bb57:  // pred: ^bb55
    %410 = llvm.add %379, %378  : i64
    llvm.br ^bb53(%410 : i64)
  ^bb58:  // pred: ^bb53
    %411 = llvm.add %374, %373  : i64
    llvm.br ^bb51(%411 : i64)
  ^bb59:  // pred: ^bb51
    %412 = llvm.add %369, %368  : i64
    llvm.br ^bb49(%412 : i64)
  ^bb60:  // pred: ^bb49
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%413 : i64)
  ^bb61(%416: i64):  // 2 preds: ^bb60, ^bb71
    %417 = llvm.icmp "slt" %416, %414 : i64
    llvm.cond_br %417, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %418 = llvm.mlir.constant(0 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%418 : i64)
  ^bb63(%421: i64):  // 2 preds: ^bb62, ^bb70
    %422 = llvm.icmp "slt" %421, %419 : i64
    llvm.cond_br %422, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %423 = llvm.mlir.constant(0 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%423 : i64)
  ^bb65(%426: i64):  // 2 preds: ^bb64, ^bb69
    %427 = llvm.icmp "slt" %426, %424 : i64
    llvm.cond_br %427, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.mlir.constant(4 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%428 : i64)
  ^bb67(%431: i64):  // 2 preds: ^bb66, ^bb68
    %432 = llvm.icmp "slt" %431, %429 : i64
    llvm.cond_br %432, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.add %416, %433  : i64
    %435 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.mlir.constant(4 : index) : i64
    %437 = llvm.mul %416, %436  : i64
    %438 = llvm.mlir.constant(4 : index) : i64
    %439 = llvm.mul %421, %438  : i64
    %440 = llvm.add %437, %439  : i64
    %441 = llvm.mlir.constant(4 : index) : i64
    %442 = llvm.mul %426, %441  : i64
    %443 = llvm.add %440, %442  : i64
    %444 = llvm.add %443, %431  : i64
    %445 = llvm.getelementptr %435[%444] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %446 = llvm.load %445 : !llvm.ptr<i32>
    %447 = llvm.extractvalue %365[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.mlir.constant(4 : index) : i64
    %449 = llvm.mul %434, %448  : i64
    %450 = llvm.mlir.constant(4 : index) : i64
    %451 = llvm.mul %421, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.mlir.constant(4 : index) : i64
    %454 = llvm.mul %426, %453  : i64
    %455 = llvm.add %452, %454  : i64
    %456 = llvm.add %455, %431  : i64
    %457 = llvm.getelementptr %447[%456] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %446, %457 : !llvm.ptr<i32>
    %458 = llvm.add %431, %430  : i64
    llvm.br ^bb67(%458 : i64)
  ^bb69:  // pred: ^bb67
    %459 = llvm.add %426, %425  : i64
    llvm.br ^bb65(%459 : i64)
  ^bb70:  // pred: ^bb65
    %460 = llvm.add %421, %420  : i64
    llvm.br ^bb63(%460 : i64)
  ^bb71:  // pred: ^bb63
    %461 = llvm.add %416, %415  : i64
    llvm.br ^bb61(%461 : i64)
  ^bb72:  // pred: ^bb61
    %462 = llvm.mlir.constant(0 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%462 : i64)
  ^bb73(%465: i64):  // 2 preds: ^bb72, ^bb83
    %466 = llvm.icmp "slt" %465, %463 : i64
    llvm.cond_br %466, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %467 = llvm.mlir.constant(0 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%467 : i64)
  ^bb75(%470: i64):  // 2 preds: ^bb74, ^bb82
    %471 = llvm.icmp "slt" %470, %468 : i64
    llvm.cond_br %471, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %472 = llvm.mlir.constant(0 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%472 : i64)
  ^bb77(%475: i64):  // 2 preds: ^bb76, ^bb81
    %476 = llvm.icmp "slt" %475, %473 : i64
    llvm.cond_br %476, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.mlir.constant(4 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%477 : i64)
  ^bb79(%480: i64):  // 2 preds: ^bb78, ^bb80
    %481 = llvm.icmp "slt" %480, %478 : i64
    llvm.cond_br %481, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %482 = llvm.mlir.constant(2 : index) : i64
    %483 = llvm.add %465, %482  : i64
    %484 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %485 = llvm.mlir.constant(4 : index) : i64
    %486 = llvm.mul %465, %485  : i64
    %487 = llvm.mlir.constant(4 : index) : i64
    %488 = llvm.mul %470, %487  : i64
    %489 = llvm.add %486, %488  : i64
    %490 = llvm.mlir.constant(4 : index) : i64
    %491 = llvm.mul %475, %490  : i64
    %492 = llvm.add %489, %491  : i64
    %493 = llvm.add %492, %480  : i64
    %494 = llvm.getelementptr %484[%493] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %495 = llvm.load %494 : !llvm.ptr<i32>
    %496 = llvm.extractvalue %365[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.mlir.constant(4 : index) : i64
    %498 = llvm.mul %483, %497  : i64
    %499 = llvm.mlir.constant(4 : index) : i64
    %500 = llvm.mul %470, %499  : i64
    %501 = llvm.add %498, %500  : i64
    %502 = llvm.mlir.constant(4 : index) : i64
    %503 = llvm.mul %475, %502  : i64
    %504 = llvm.add %501, %503  : i64
    %505 = llvm.add %504, %480  : i64
    %506 = llvm.getelementptr %496[%505] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %495, %506 : !llvm.ptr<i32>
    %507 = llvm.add %480, %479  : i64
    llvm.br ^bb79(%507 : i64)
  ^bb81:  // pred: ^bb79
    %508 = llvm.add %475, %474  : i64
    llvm.br ^bb77(%508 : i64)
  ^bb82:  // pred: ^bb77
    %509 = llvm.add %470, %469  : i64
    llvm.br ^bb75(%509 : i64)
  ^bb83:  // pred: ^bb75
    %510 = llvm.add %465, %464  : i64
    llvm.br ^bb73(%510 : i64)
  ^bb84:  // pred: ^bb73
    %511 = llvm.mlir.constant(0 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%511 : i64)
  ^bb85(%514: i64):  // 2 preds: ^bb84, ^bb95
    %515 = llvm.icmp "slt" %514, %512 : i64
    llvm.cond_br %515, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %516 = llvm.mlir.constant(0 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%516 : i64)
  ^bb87(%519: i64):  // 2 preds: ^bb86, ^bb94
    %520 = llvm.icmp "slt" %519, %517 : i64
    llvm.cond_br %520, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %521 = llvm.mlir.constant(0 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%521 : i64)
  ^bb89(%524: i64):  // 2 preds: ^bb88, ^bb93
    %525 = llvm.icmp "slt" %524, %522 : i64
    llvm.cond_br %525, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %526 = llvm.mlir.constant(0 : index) : i64
    %527 = llvm.mlir.constant(4 : index) : i64
    %528 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%526 : i64)
  ^bb91(%529: i64):  // 2 preds: ^bb90, ^bb92
    %530 = llvm.icmp "slt" %529, %527 : i64
    llvm.cond_br %530, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %531 = llvm.mlir.constant(3 : index) : i64
    %532 = llvm.add %514, %531  : i64
    %533 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %534 = llvm.mlir.constant(4 : index) : i64
    %535 = llvm.mul %514, %534  : i64
    %536 = llvm.mlir.constant(4 : index) : i64
    %537 = llvm.mul %519, %536  : i64
    %538 = llvm.add %535, %537  : i64
    %539 = llvm.mlir.constant(4 : index) : i64
    %540 = llvm.mul %524, %539  : i64
    %541 = llvm.add %538, %540  : i64
    %542 = llvm.add %541, %529  : i64
    %543 = llvm.getelementptr %533[%542] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %544 = llvm.load %543 : !llvm.ptr<i32>
    %545 = llvm.extractvalue %365[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.mlir.constant(4 : index) : i64
    %547 = llvm.mul %532, %546  : i64
    %548 = llvm.mlir.constant(4 : index) : i64
    %549 = llvm.mul %519, %548  : i64
    %550 = llvm.add %547, %549  : i64
    %551 = llvm.mlir.constant(4 : index) : i64
    %552 = llvm.mul %524, %551  : i64
    %553 = llvm.add %550, %552  : i64
    %554 = llvm.add %553, %529  : i64
    %555 = llvm.getelementptr %545[%554] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %544, %555 : !llvm.ptr<i32>
    %556 = llvm.add %529, %528  : i64
    llvm.br ^bb91(%556 : i64)
  ^bb93:  // pred: ^bb91
    %557 = llvm.add %524, %523  : i64
    llvm.br ^bb89(%557 : i64)
  ^bb94:  // pred: ^bb89
    %558 = llvm.add %519, %518  : i64
    llvm.br ^bb87(%558 : i64)
  ^bb95:  // pred: ^bb87
    %559 = llvm.add %514, %513  : i64
    llvm.br ^bb85(%559 : i64)
  ^bb96:  // pred: ^bb85
    %560 = llvm.mlir.constant(4 : index) : i64
    %561 = llvm.mlir.constant(1 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    %563 = llvm.mlir.constant(4 : index) : i64
    %564 = llvm.mlir.constant(1 : index) : i64
    %565 = llvm.mlir.constant(4 : index) : i64
    %566 = llvm.mlir.constant(4 : index) : i64
    %567 = llvm.mlir.constant(16 : index) : i64
    %568 = llvm.mlir.null : !llvm.ptr<i32>
    %569 = llvm.getelementptr %568[%567] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %570 = llvm.ptrtoint %569 : !llvm.ptr<i32> to i64
    %571 = llvm.mlir.constant(16 : index) : i64
    %572 = llvm.add %570, %571  : i64
    %573 = llvm.call @malloc(%572) : (i64) -> !llvm.ptr<i8>
    %574 = llvm.bitcast %573 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %575 = llvm.ptrtoint %574 : !llvm.ptr<i32> to i64
    %576 = llvm.mlir.constant(1 : index) : i64
    %577 = llvm.sub %571, %576  : i64
    %578 = llvm.add %575, %577  : i64
    %579 = llvm.urem %578, %571  : i64
    %580 = llvm.sub %578, %579  : i64
    %581 = llvm.inttoptr %580 : i64 to !llvm.ptr<i32>
    %582 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %583 = llvm.insertvalue %574, %582[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %584 = llvm.insertvalue %581, %583[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.mlir.constant(0 : index) : i64
    %586 = llvm.insertvalue %585, %584[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %587 = llvm.insertvalue %560, %586[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %588 = llvm.insertvalue %561, %587[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %589 = llvm.insertvalue %562, %588[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.insertvalue %563, %589[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.insertvalue %566, %590[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.insertvalue %565, %591[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %593 = llvm.insertvalue %563, %592[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %594 = llvm.insertvalue %564, %593[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.mlir.constant(0 : index) : i64
    %596 = llvm.mlir.constant(4 : index) : i64
    %597 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%595 : i64)
  ^bb97(%598: i64):  // 2 preds: ^bb96, ^bb107
    %599 = llvm.icmp "slt" %598, %596 : i64
    llvm.cond_br %599, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %600 = llvm.mlir.constant(0 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    %602 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%600 : i64)
  ^bb99(%603: i64):  // 2 preds: ^bb98, ^bb106
    %604 = llvm.icmp "slt" %603, %601 : i64
    llvm.cond_br %604, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %605 = llvm.mlir.constant(0 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%605 : i64)
  ^bb101(%608: i64):  // 2 preds: ^bb100, ^bb105
    %609 = llvm.icmp "slt" %608, %606 : i64
    llvm.cond_br %609, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %610 = llvm.mlir.constant(0 : index) : i64
    %611 = llvm.mlir.constant(4 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%610 : i64)
  ^bb103(%613: i64):  // 2 preds: ^bb102, ^bb104
    %614 = llvm.icmp "slt" %613, %611 : i64
    llvm.cond_br %614, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %615 = llvm.extractvalue %365[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %616 = llvm.mlir.constant(4 : index) : i64
    %617 = llvm.mul %598, %616  : i64
    %618 = llvm.mlir.constant(4 : index) : i64
    %619 = llvm.mul %603, %618  : i64
    %620 = llvm.add %617, %619  : i64
    %621 = llvm.mlir.constant(4 : index) : i64
    %622 = llvm.mul %608, %621  : i64
    %623 = llvm.add %620, %622  : i64
    %624 = llvm.add %623, %613  : i64
    %625 = llvm.getelementptr %615[%624] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %626 = llvm.load %625 : !llvm.ptr<i32>
    %627 = llvm.extractvalue %365[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %628 = llvm.mlir.constant(4 : index) : i64
    %629 = llvm.mul %598, %628  : i64
    %630 = llvm.mlir.constant(4 : index) : i64
    %631 = llvm.mul %603, %630  : i64
    %632 = llvm.add %629, %631  : i64
    %633 = llvm.mlir.constant(4 : index) : i64
    %634 = llvm.mul %608, %633  : i64
    %635 = llvm.add %632, %634  : i64
    %636 = llvm.add %635, %613  : i64
    %637 = llvm.getelementptr %627[%636] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %638 = llvm.load %637 : !llvm.ptr<i32>
    %639 = llvm.mul %626, %638  : i32
    %640 = llvm.extractvalue %594[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %641 = llvm.mlir.constant(4 : index) : i64
    %642 = llvm.mul %598, %641  : i64
    %643 = llvm.mlir.constant(4 : index) : i64
    %644 = llvm.mul %603, %643  : i64
    %645 = llvm.add %642, %644  : i64
    %646 = llvm.mlir.constant(4 : index) : i64
    %647 = llvm.mul %608, %646  : i64
    %648 = llvm.add %645, %647  : i64
    %649 = llvm.add %648, %613  : i64
    %650 = llvm.getelementptr %640[%649] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %639, %650 : !llvm.ptr<i32>
    %651 = llvm.add %613, %612  : i64
    llvm.br ^bb103(%651 : i64)
  ^bb105:  // pred: ^bb103
    %652 = llvm.add %608, %607  : i64
    llvm.br ^bb101(%652 : i64)
  ^bb106:  // pred: ^bb101
    %653 = llvm.add %603, %602  : i64
    llvm.br ^bb99(%653 : i64)
  ^bb107:  // pred: ^bb99
    %654 = llvm.add %598, %597  : i64
    llvm.br ^bb97(%654 : i64)
  ^bb108:  // pred: ^bb97
    %655 = llvm.mlir.constant(1 : index) : i64
    %656 = llvm.mlir.constant(1 : index) : i64
    %657 = llvm.mlir.constant(1 : index) : i64
    %658 = llvm.mlir.constant(4 : index) : i64
    %659 = llvm.mlir.constant(1 : index) : i64
    %660 = llvm.mlir.constant(4 : index) : i64
    %661 = llvm.mlir.constant(4 : index) : i64
    %662 = llvm.mlir.constant(4 : index) : i64
    %663 = llvm.mlir.null : !llvm.ptr<i32>
    %664 = llvm.getelementptr %663[%662] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %665 = llvm.ptrtoint %664 : !llvm.ptr<i32> to i64
    %666 = llvm.mlir.constant(16 : index) : i64
    %667 = llvm.add %665, %666  : i64
    %668 = llvm.call @malloc(%667) : (i64) -> !llvm.ptr<i8>
    %669 = llvm.bitcast %668 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %670 = llvm.ptrtoint %669 : !llvm.ptr<i32> to i64
    %671 = llvm.mlir.constant(1 : index) : i64
    %672 = llvm.sub %666, %671  : i64
    %673 = llvm.add %670, %672  : i64
    %674 = llvm.urem %673, %666  : i64
    %675 = llvm.sub %673, %674  : i64
    %676 = llvm.inttoptr %675 : i64 to !llvm.ptr<i32>
    %677 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %678 = llvm.insertvalue %669, %677[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %679 = llvm.insertvalue %676, %678[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %680 = llvm.mlir.constant(0 : index) : i64
    %681 = llvm.insertvalue %680, %679[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %682 = llvm.insertvalue %655, %681[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %683 = llvm.insertvalue %656, %682[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %684 = llvm.insertvalue %657, %683[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %685 = llvm.insertvalue %658, %684[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %686 = llvm.insertvalue %661, %685[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %687 = llvm.insertvalue %660, %686[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %688 = llvm.insertvalue %658, %687[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %689 = llvm.insertvalue %659, %688[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %690 = llvm.mlir.constant(0 : index) : i64
    %691 = llvm.mlir.constant(1 : index) : i64
    %692 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%690 : i64)
  ^bb109(%693: i64):  // 2 preds: ^bb108, ^bb119
    %694 = llvm.icmp "slt" %693, %691 : i64
    llvm.cond_br %694, ^bb110, ^bb120
  ^bb110:  // pred: ^bb109
    %695 = llvm.mlir.constant(0 : index) : i64
    %696 = llvm.mlir.constant(1 : index) : i64
    %697 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb111(%695 : i64)
  ^bb111(%698: i64):  // 2 preds: ^bb110, ^bb118
    %699 = llvm.icmp "slt" %698, %696 : i64
    llvm.cond_br %699, ^bb112, ^bb119
  ^bb112:  // pred: ^bb111
    %700 = llvm.mlir.constant(0 : index) : i64
    %701 = llvm.mlir.constant(1 : index) : i64
    %702 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb113(%700 : i64)
  ^bb113(%703: i64):  // 2 preds: ^bb112, ^bb117
    %704 = llvm.icmp "slt" %703, %701 : i64
    llvm.cond_br %704, ^bb114, ^bb118
  ^bb114:  // pred: ^bb113
    %705 = llvm.mlir.constant(0 : index) : i64
    %706 = llvm.mlir.constant(4 : index) : i64
    %707 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%705 : i64)
  ^bb115(%708: i64):  // 2 preds: ^bb114, ^bb116
    %709 = llvm.icmp "slt" %708, %706 : i64
    llvm.cond_br %709, ^bb116, ^bb117
  ^bb116:  // pred: ^bb115
    %710 = llvm.extractvalue %594[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %711 = llvm.mlir.constant(4 : index) : i64
    %712 = llvm.mul %693, %711  : i64
    %713 = llvm.mlir.constant(4 : index) : i64
    %714 = llvm.mul %698, %713  : i64
    %715 = llvm.add %712, %714  : i64
    %716 = llvm.mlir.constant(4 : index) : i64
    %717 = llvm.mul %703, %716  : i64
    %718 = llvm.add %715, %717  : i64
    %719 = llvm.add %718, %708  : i64
    %720 = llvm.getelementptr %710[%719] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %721 = llvm.load %720 : !llvm.ptr<i32>
    %722 = llvm.extractvalue %689[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %723 = llvm.mlir.constant(4 : index) : i64
    %724 = llvm.mul %693, %723  : i64
    %725 = llvm.mlir.constant(4 : index) : i64
    %726 = llvm.mul %698, %725  : i64
    %727 = llvm.add %724, %726  : i64
    %728 = llvm.mlir.constant(4 : index) : i64
    %729 = llvm.mul %703, %728  : i64
    %730 = llvm.add %727, %729  : i64
    %731 = llvm.add %730, %708  : i64
    %732 = llvm.getelementptr %722[%731] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %721, %732 : !llvm.ptr<i32>
    %733 = llvm.add %708, %707  : i64
    llvm.br ^bb115(%733 : i64)
  ^bb117:  // pred: ^bb115
    %734 = llvm.add %703, %702  : i64
    llvm.br ^bb113(%734 : i64)
  ^bb118:  // pred: ^bb113
    %735 = llvm.add %698, %697  : i64
    llvm.br ^bb111(%735 : i64)
  ^bb119:  // pred: ^bb111
    %736 = llvm.add %693, %692  : i64
    llvm.br ^bb109(%736 : i64)
  ^bb120:  // pred: ^bb109
    %737 = llvm.mlir.constant(4 : index) : i64
    %738 = llvm.mlir.constant(1 : index) : i64
    %739 = llvm.mlir.null : !llvm.ptr<i64>
    %740 = llvm.getelementptr %739[%737] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %741 = llvm.ptrtoint %740 : !llvm.ptr<i64> to i64
    %742 = llvm.mlir.constant(16 : index) : i64
    %743 = llvm.add %741, %742  : i64
    %744 = llvm.call @malloc(%743) : (i64) -> !llvm.ptr<i8>
    %745 = llvm.bitcast %744 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %746 = llvm.ptrtoint %745 : !llvm.ptr<i64> to i64
    %747 = llvm.mlir.constant(1 : index) : i64
    %748 = llvm.sub %742, %747  : i64
    %749 = llvm.add %746, %748  : i64
    %750 = llvm.urem %749, %742  : i64
    %751 = llvm.sub %749, %750  : i64
    %752 = llvm.inttoptr %751 : i64 to !llvm.ptr<i64>
    %753 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %754 = llvm.insertvalue %745, %753[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %755 = llvm.insertvalue %752, %754[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %756 = llvm.mlir.constant(0 : index) : i64
    %757 = llvm.insertvalue %756, %755[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %758 = llvm.insertvalue %737, %757[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %759 = llvm.insertvalue %738, %758[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %760 = llvm.mlir.constant(0 : index) : i64
    %761 = llvm.mlir.constant(4 : index) : i64
    %762 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb121(%760 : i64)
  ^bb121(%763: i64):  // 2 preds: ^bb120, ^bb122
    %764 = llvm.icmp "slt" %763, %761 : i64
    llvm.cond_br %764, ^bb122, ^bb123
  ^bb122:  // pred: ^bb121
    %765 = llvm.extractvalue %759[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %766 = llvm.getelementptr %765[%763] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %766 : !llvm.ptr<i64>
    %767 = llvm.add %763, %762  : i64
    llvm.br ^bb121(%767 : i64)
  ^bb123:  // pred: ^bb121
    %768 = llvm.mlir.constant(4 : index) : i64
    %769 = llvm.mlir.constant(1 : index) : i64
    %770 = llvm.mlir.null : !llvm.ptr<i64>
    %771 = llvm.getelementptr %770[%768] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %772 = llvm.ptrtoint %771 : !llvm.ptr<i64> to i64
    %773 = llvm.mlir.constant(16 : index) : i64
    %774 = llvm.add %772, %773  : i64
    %775 = llvm.call @malloc(%774) : (i64) -> !llvm.ptr<i8>
    %776 = llvm.bitcast %775 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %777 = llvm.ptrtoint %776 : !llvm.ptr<i64> to i64
    %778 = llvm.mlir.constant(1 : index) : i64
    %779 = llvm.sub %773, %778  : i64
    %780 = llvm.add %777, %779  : i64
    %781 = llvm.urem %780, %773  : i64
    %782 = llvm.sub %780, %781  : i64
    %783 = llvm.inttoptr %782 : i64 to !llvm.ptr<i64>
    %784 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %785 = llvm.insertvalue %776, %784[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %786 = llvm.insertvalue %783, %785[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %787 = llvm.mlir.constant(0 : index) : i64
    %788 = llvm.insertvalue %787, %786[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %789 = llvm.insertvalue %768, %788[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %790 = llvm.insertvalue %769, %789[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %791 = llvm.mlir.constant(0 : index) : i64
    %792 = llvm.mlir.constant(4 : index) : i64
    %793 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb124(%791 : i64)
  ^bb124(%794: i64):  // 2 preds: ^bb123, ^bb125
    %795 = llvm.icmp "slt" %794, %792 : i64
    llvm.cond_br %795, ^bb125, ^bb126
  ^bb125:  // pred: ^bb124
    %796 = llvm.extractvalue %759[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %797 = llvm.getelementptr %796[%794] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %798 = llvm.load %797 : !llvm.ptr<i64>
    %799 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %800 = llvm.load %799 : !llvm.ptr<i64>
    %801 = llvm.mul %798, %800  : i64
    %802 = llvm.extractvalue %790[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %803 = llvm.getelementptr %802[%794] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %801, %803 : !llvm.ptr<i64>
    %804 = llvm.add %794, %793  : i64
    llvm.br ^bb124(%804 : i64)
  ^bb126:  // pred: ^bb124
    %805 = llvm.mlir.constant(4 : index) : i64
    %806 = llvm.mlir.constant(1 : index) : i64
    %807 = llvm.mlir.null : !llvm.ptr<i1>
    %808 = llvm.getelementptr %807[%805] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %809 = llvm.ptrtoint %808 : !llvm.ptr<i1> to i64
    %810 = llvm.mlir.constant(16 : index) : i64
    %811 = llvm.add %809, %810  : i64
    %812 = llvm.call @malloc(%811) : (i64) -> !llvm.ptr<i8>
    %813 = llvm.bitcast %812 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %814 = llvm.ptrtoint %813 : !llvm.ptr<i1> to i64
    %815 = llvm.mlir.constant(1 : index) : i64
    %816 = llvm.sub %810, %815  : i64
    %817 = llvm.add %814, %816  : i64
    %818 = llvm.urem %817, %810  : i64
    %819 = llvm.sub %817, %818  : i64
    %820 = llvm.inttoptr %819 : i64 to !llvm.ptr<i1>
    %821 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %822 = llvm.insertvalue %813, %821[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %823 = llvm.insertvalue %820, %822[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %824 = llvm.mlir.constant(0 : index) : i64
    %825 = llvm.insertvalue %824, %823[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %826 = llvm.insertvalue %805, %825[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %827 = llvm.insertvalue %806, %826[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %828 = llvm.mlir.constant(0 : index) : i64
    %829 = llvm.mlir.constant(4 : index) : i64
    %830 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb127(%828 : i64)
  ^bb127(%831: i64):  // 2 preds: ^bb126, ^bb128
    %832 = llvm.icmp "slt" %831, %829 : i64
    llvm.cond_br %832, ^bb128, ^bb129
  ^bb128:  // pred: ^bb127
    %833 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %834 = llvm.getelementptr %833[%831] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %835 = llvm.load %834 : !llvm.ptr<i64>
    %836 = llvm.extractvalue %790[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %837 = llvm.getelementptr %836[%831] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %838 = llvm.load %837 : !llvm.ptr<i64>
    %839 = llvm.icmp "eq" %835, %838 : i64
    %840 = llvm.extractvalue %827[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %841 = llvm.getelementptr %840[%831] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %839, %841 : !llvm.ptr<i1>
    %842 = llvm.add %831, %830  : i64
    llvm.br ^bb127(%842 : i64)
  ^bb129:  // pred: ^bb127
    %843 = llvm.mlir.constant(4 : index) : i64
    %844 = llvm.mlir.constant(1 : index) : i64
    %845 = llvm.mlir.null : !llvm.ptr<i64>
    %846 = llvm.getelementptr %845[%843] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %847 = llvm.ptrtoint %846 : !llvm.ptr<i64> to i64
    %848 = llvm.mlir.constant(16 : index) : i64
    %849 = llvm.add %847, %848  : i64
    %850 = llvm.call @malloc(%849) : (i64) -> !llvm.ptr<i8>
    %851 = llvm.bitcast %850 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %852 = llvm.ptrtoint %851 : !llvm.ptr<i64> to i64
    %853 = llvm.mlir.constant(1 : index) : i64
    %854 = llvm.sub %848, %853  : i64
    %855 = llvm.add %852, %854  : i64
    %856 = llvm.urem %855, %848  : i64
    %857 = llvm.sub %855, %856  : i64
    %858 = llvm.inttoptr %857 : i64 to !llvm.ptr<i64>
    %859 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %860 = llvm.insertvalue %851, %859[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %861 = llvm.insertvalue %858, %860[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %862 = llvm.mlir.constant(0 : index) : i64
    %863 = llvm.insertvalue %862, %861[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %864 = llvm.insertvalue %843, %863[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %865 = llvm.insertvalue %844, %864[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %866 = llvm.mlir.constant(0 : index) : i64
    %867 = llvm.mlir.constant(4 : index) : i64
    %868 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb130(%866 : i64)
  ^bb130(%869: i64):  // 2 preds: ^bb129, ^bb131
    %870 = llvm.icmp "slt" %869, %867 : i64
    llvm.cond_br %870, ^bb131, ^bb132
  ^bb131:  // pred: ^bb130
    %871 = llvm.extractvalue %827[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %872 = llvm.getelementptr %871[%869] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %873 = llvm.load %872 : !llvm.ptr<i1>
    %874 = llvm.extractvalue %759[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %875 = llvm.getelementptr %874[%869] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %876 = llvm.load %875 : !llvm.ptr<i64>
    %877 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %878 = llvm.getelementptr %877[%869] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %879 = llvm.load %878 : !llvm.ptr<i64>
    %880 = llvm.select %873, %876, %879 : i1, i64
    %881 = llvm.extractvalue %865[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %882 = llvm.getelementptr %881[%869] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %880, %882 : !llvm.ptr<i64>
    %883 = llvm.add %869, %868  : i64
    llvm.br ^bb130(%883 : i64)
  ^bb132:  // pred: ^bb130
    %884 = llvm.mlir.constant(4 : index) : i64
    %885 = llvm.mlir.constant(1 : index) : i64
    %886 = llvm.mlir.constant(1 : index) : i64
    %887 = llvm.mlir.constant(4 : index) : i64
    %888 = llvm.mlir.constant(1 : index) : i64
    %889 = llvm.mlir.constant(4 : index) : i64
    %890 = llvm.mlir.constant(4 : index) : i64
    %891 = llvm.mlir.constant(16 : index) : i64
    %892 = llvm.mlir.null : !llvm.ptr<i32>
    %893 = llvm.getelementptr %892[%891] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %894 = llvm.ptrtoint %893 : !llvm.ptr<i32> to i64
    %895 = llvm.mlir.constant(16 : index) : i64
    %896 = llvm.add %894, %895  : i64
    %897 = llvm.call @malloc(%896) : (i64) -> !llvm.ptr<i8>
    %898 = llvm.bitcast %897 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %899 = llvm.ptrtoint %898 : !llvm.ptr<i32> to i64
    %900 = llvm.mlir.constant(1 : index) : i64
    %901 = llvm.sub %895, %900  : i64
    %902 = llvm.add %899, %901  : i64
    %903 = llvm.urem %902, %895  : i64
    %904 = llvm.sub %902, %903  : i64
    %905 = llvm.inttoptr %904 : i64 to !llvm.ptr<i32>
    %906 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %907 = llvm.insertvalue %898, %906[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %908 = llvm.insertvalue %905, %907[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %909 = llvm.mlir.constant(0 : index) : i64
    %910 = llvm.insertvalue %909, %908[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %911 = llvm.insertvalue %884, %910[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %912 = llvm.insertvalue %885, %911[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %913 = llvm.insertvalue %886, %912[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %914 = llvm.insertvalue %887, %913[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %915 = llvm.insertvalue %890, %914[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %916 = llvm.insertvalue %889, %915[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %917 = llvm.insertvalue %887, %916[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %918 = llvm.insertvalue %888, %917[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %919 = llvm.mlir.constant(0 : index) : i64
    %920 = llvm.mlir.constant(4 : index) : i64
    %921 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb133(%919 : i64)
  ^bb133(%922: i64):  // 2 preds: ^bb132, ^bb143
    %923 = llvm.icmp "slt" %922, %920 : i64
    llvm.cond_br %923, ^bb134, ^bb144
  ^bb134:  // pred: ^bb133
    %924 = llvm.mlir.constant(0 : index) : i64
    %925 = llvm.mlir.constant(1 : index) : i64
    %926 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb135(%924 : i64)
  ^bb135(%927: i64):  // 2 preds: ^bb134, ^bb142
    %928 = llvm.icmp "slt" %927, %925 : i64
    llvm.cond_br %928, ^bb136, ^bb143
  ^bb136:  // pred: ^bb135
    %929 = llvm.mlir.constant(0 : index) : i64
    %930 = llvm.mlir.constant(1 : index) : i64
    %931 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb137(%929 : i64)
  ^bb137(%932: i64):  // 2 preds: ^bb136, ^bb141
    %933 = llvm.icmp "slt" %932, %930 : i64
    llvm.cond_br %933, ^bb138, ^bb142
  ^bb138:  // pred: ^bb137
    %934 = llvm.mlir.constant(0 : index) : i64
    %935 = llvm.mlir.constant(4 : index) : i64
    %936 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb139(%934 : i64)
  ^bb139(%937: i64):  // 2 preds: ^bb138, ^bb140
    %938 = llvm.icmp "slt" %937, %935 : i64
    llvm.cond_br %938, ^bb140, ^bb141
  ^bb140:  // pred: ^bb139
    %939 = llvm.extractvalue %594[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %940 = llvm.mlir.constant(4 : index) : i64
    %941 = llvm.mul %922, %940  : i64
    %942 = llvm.mlir.constant(4 : index) : i64
    %943 = llvm.mul %73, %942  : i64
    %944 = llvm.add %941, %943  : i64
    %945 = llvm.mlir.constant(4 : index) : i64
    %946 = llvm.mul %73, %945  : i64
    %947 = llvm.add %944, %946  : i64
    %948 = llvm.add %947, %937  : i64
    %949 = llvm.getelementptr %939[%948] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %950 = llvm.load %949 : !llvm.ptr<i32>
    %951 = llvm.extractvalue %918[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %952 = llvm.mlir.constant(4 : index) : i64
    %953 = llvm.mul %922, %952  : i64
    %954 = llvm.mlir.constant(4 : index) : i64
    %955 = llvm.mul %927, %954  : i64
    %956 = llvm.add %953, %955  : i64
    %957 = llvm.mlir.constant(4 : index) : i64
    %958 = llvm.mul %932, %957  : i64
    %959 = llvm.add %956, %958  : i64
    %960 = llvm.add %959, %937  : i64
    %961 = llvm.getelementptr %951[%960] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %950, %961 : !llvm.ptr<i32>
    %962 = llvm.add %937, %936  : i64
    llvm.br ^bb139(%962 : i64)
  ^bb141:  // pred: ^bb139
    %963 = llvm.add %932, %931  : i64
    llvm.br ^bb137(%963 : i64)
  ^bb142:  // pred: ^bb137
    %964 = llvm.add %927, %926  : i64
    llvm.br ^bb135(%964 : i64)
  ^bb143:  // pred: ^bb135
    %965 = llvm.add %922, %921  : i64
    llvm.br ^bb133(%965 : i64)
  ^bb144:  // pred: ^bb133
    %966 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %967 = llvm.insertvalue %689, %966[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %968 = llvm.insertvalue %918, %967[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %968 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg6: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v8_0", "v7_0", "v0_0", "v5_0", "v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v11_0", "v2_0"]} {
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
    %60 = llvm.load %arg6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %61 = llvm.extractvalue %60[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.extractvalue %60[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.extractvalue %60[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.extractvalue %60[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.extractvalue %60[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.extractvalue %60[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.extractvalue %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.extractvalue %60[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.extractvalue %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.extractvalue %60[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %72, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %208 = llvm.mlir.constant(5 : i64) : i64
    %209 = llvm.getelementptr %0[%208] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %210 = llvm.load %209 : !llvm.ptr<ptr<i8>>
    %211 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %212 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %213 = llvm.call @omTensorGetDataPtr(%210) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %214 = llvm.bitcast %213 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %215 = llvm.insertvalue %214, %212[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %214, %215[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.mlir.constant(0 : i64) : i64
    %218 = llvm.insertvalue %217, %216[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.call @omTensorGetShape(%210) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %220 = llvm.call @omTensorGetStrides(%210) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %221 = llvm.mlir.constant(0 : i64) : i64
    %222 = llvm.getelementptr %219[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %223 = llvm.load %222 : !llvm.ptr<i64>
    %224 = llvm.insertvalue %223, %218[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.getelementptr %220[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %226 = llvm.load %225 : !llvm.ptr<i64>
    %227 = llvm.insertvalue %226, %224[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.mlir.constant(1 : i64) : i64
    %229 = llvm.getelementptr %219[%228] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %230 = llvm.load %229 : !llvm.ptr<i64>
    %231 = llvm.insertvalue %230, %227[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.getelementptr %220[%228] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %233 = llvm.load %232 : !llvm.ptr<i64>
    %234 = llvm.insertvalue %233, %231[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.mlir.constant(2 : i64) : i64
    %236 = llvm.getelementptr %219[%235] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %237 = llvm.load %236 : !llvm.ptr<i64>
    %238 = llvm.insertvalue %237, %234[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.getelementptr %220[%235] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %240 = llvm.load %239 : !llvm.ptr<i64>
    %241 = llvm.insertvalue %240, %238[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.mlir.constant(3 : i64) : i64
    %243 = llvm.getelementptr %219[%242] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %244 = llvm.load %243 : !llvm.ptr<i64>
    %245 = llvm.insertvalue %244, %241[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.getelementptr %220[%242] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %247 = llvm.load %246 : !llvm.ptr<i64>
    %248 = llvm.insertvalue %247, %245[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %248, %211 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %129, %170, %211) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %249 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %250 = llvm.extractvalue %249[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %251 = llvm.extractvalue %249[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %252 = llvm.mlir.constant(2 : i64) : i64
    %253 = llvm.mlir.constant(16 : i64) : i64
    %254 = llvm.call @malloc(%253) : (i64) -> !llvm.ptr<i8>
    %255 = llvm.bitcast %254 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %256 = llvm.mlir.constant(4 : i64) : i64
    %257 = llvm.call @omTensorCreateUntyped(%256) : (i64) -> !llvm.ptr<i8>
    %258 = llvm.mlir.constant(1 : i64) : i64
    %259 = llvm.extractvalue %250[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.bitcast %259 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %261 = llvm.extractvalue %250[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.bitcast %261 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%257, %258, %260, %262) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %263 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%257, %263) : (!llvm.ptr<i8>, i64) -> ()
    %264 = llvm.call @omTensorGetShape(%257) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %265 = llvm.call @omTensorGetStrides(%257) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %266 = llvm.mlir.constant(0 : i64) : i64
    %267 = llvm.extractvalue %250[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.getelementptr %264[%266] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %267, %268 : !llvm.ptr<i64>
    %269 = llvm.extractvalue %250[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.getelementptr %265[%266] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %269, %270 : !llvm.ptr<i64>
    %271 = llvm.mlir.constant(1 : i64) : i64
    %272 = llvm.extractvalue %250[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.getelementptr %264[%271] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %272, %273 : !llvm.ptr<i64>
    %274 = llvm.extractvalue %250[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.getelementptr %265[%271] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %274, %275 : !llvm.ptr<i64>
    %276 = llvm.mlir.constant(2 : i64) : i64
    %277 = llvm.extractvalue %250[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.getelementptr %264[%276] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %277, %278 : !llvm.ptr<i64>
    %279 = llvm.extractvalue %250[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.getelementptr %265[%276] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %279, %280 : !llvm.ptr<i64>
    %281 = llvm.mlir.constant(3 : i64) : i64
    %282 = llvm.extractvalue %250[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.getelementptr %264[%281] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %282, %283 : !llvm.ptr<i64>
    %284 = llvm.extractvalue %250[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.getelementptr %265[%281] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %284, %285 : !llvm.ptr<i64>
    %286 = llvm.mlir.constant(0 : i64) : i64
    %287 = llvm.getelementptr %255[%286] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %257, %287 : !llvm.ptr<ptr<i8>>
    %288 = llvm.mlir.constant(4 : i64) : i64
    %289 = llvm.call @omTensorCreateUntyped(%288) : (i64) -> !llvm.ptr<i8>
    %290 = llvm.mlir.constant(1 : i64) : i64
    %291 = llvm.extractvalue %251[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.bitcast %291 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %293 = llvm.extractvalue %251[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.bitcast %293 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%289, %290, %292, %294) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %295 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%289, %295) : (!llvm.ptr<i8>, i64) -> ()
    %296 = llvm.call @omTensorGetShape(%289) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %297 = llvm.call @omTensorGetStrides(%289) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %298 = llvm.mlir.constant(0 : i64) : i64
    %299 = llvm.extractvalue %251[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.getelementptr %296[%298] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %299, %300 : !llvm.ptr<i64>
    %301 = llvm.extractvalue %251[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.getelementptr %297[%298] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %301, %302 : !llvm.ptr<i64>
    %303 = llvm.mlir.constant(1 : i64) : i64
    %304 = llvm.extractvalue %251[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.getelementptr %296[%303] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %304, %305 : !llvm.ptr<i64>
    %306 = llvm.extractvalue %251[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.getelementptr %297[%303] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %306, %307 : !llvm.ptr<i64>
    %308 = llvm.mlir.constant(2 : i64) : i64
    %309 = llvm.extractvalue %251[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.getelementptr %296[%308] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %309, %310 : !llvm.ptr<i64>
    %311 = llvm.extractvalue %251[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.getelementptr %297[%308] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %311, %312 : !llvm.ptr<i64>
    %313 = llvm.mlir.constant(3 : i64) : i64
    %314 = llvm.extractvalue %251[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.getelementptr %296[%313] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %314, %315 : !llvm.ptr<i64>
    %316 = llvm.extractvalue %251[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.getelementptr %297[%313] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %316, %317 : !llvm.ptr<i64>
    %318 = llvm.mlir.constant(1 : i64) : i64
    %319 = llvm.getelementptr %255[%318] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %289, %319 : !llvm.ptr<ptr<i8>>
    %320 = llvm.call @omTensorListCreate(%255, %252, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %320 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<422 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<422 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<142 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<142 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

