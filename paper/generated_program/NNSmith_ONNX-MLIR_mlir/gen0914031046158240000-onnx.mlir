module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v10_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 3 , 4 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr<i32>, %arg34: !llvm.ptr<i32>, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64, %arg44: !llvm.ptr<i32>, %arg45: !llvm.ptr<i32>, %arg46: i64, %arg47: i64, %arg48: i64, %arg49: i64, %arg50: i64, %arg51: i64, %arg52: i64, %arg53: i64, %arg54: i64, %arg55: !llvm.ptr<i32>, %arg56: !llvm.ptr<i32>, %arg57: i64, %arg58: i64, %arg59: i64, %arg60: i64, %arg61: i64, %arg62: i64, %arg63: i64, %arg64: i64, %arg65: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v10_0", "v2_0", "v7_0", "v6_0", "v5_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v4_0"]} {
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
    %74 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %75 = llvm.bitcast %74 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %76 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %77 = llvm.insertvalue %75, %76[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %78 = llvm.insertvalue %75, %77[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.insertvalue %79, %78[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %81 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %82 = llvm.bitcast %81 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %83 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %84 = llvm.insertvalue %82, %83[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %85 = llvm.insertvalue %82, %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.insertvalue %86, %85[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %88 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %89 = llvm.bitcast %88 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %90 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %91 = llvm.insertvalue %89, %90[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.insertvalue %89, %91[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.insertvalue %93, %92[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.mlir.constant(4 : index) : i64
    %96 = llvm.insertvalue %95, %94[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.insertvalue %97, %96[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %100 = llvm.bitcast %99 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %101 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %102 = llvm.insertvalue %100, %101[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %103 = llvm.insertvalue %100, %102[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.insertvalue %104, %103[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %106 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %107 = llvm.bitcast %106 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %108 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %109 = llvm.insertvalue %107, %108[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.insertvalue %107, %109[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.insertvalue %111, %110[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.mlir.constant(4 : index) : i64
    %114 = llvm.insertvalue %113, %112[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.insertvalue %115, %114[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(4 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(4 : index) : i64
    %123 = llvm.mlir.constant(4 : index) : i64
    %124 = llvm.mlir.null : !llvm.ptr<i32>
    %125 = llvm.getelementptr %124[%123] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %126 = llvm.ptrtoint %125 : !llvm.ptr<i32> to i64
    %127 = llvm.mlir.constant(16 : index) : i64
    %128 = llvm.add %126, %127  : i64
    %129 = llvm.call @malloc(%128) : (i64) -> !llvm.ptr<i8>
    %130 = llvm.bitcast %129 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %131 = llvm.ptrtoint %130 : !llvm.ptr<i32> to i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.sub %127, %132  : i64
    %134 = llvm.add %131, %133  : i64
    %135 = llvm.urem %134, %127  : i64
    %136 = llvm.sub %134, %135  : i64
    %137 = llvm.inttoptr %136 : i64 to !llvm.ptr<i32>
    %138 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %139 = llvm.insertvalue %130, %138[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %137, %139[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.insertvalue %141, %140[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.insertvalue %117, %142[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %118, %143[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %119, %144[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %120, %145[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %122, %146[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %119, %147[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %120, %148[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %121, %149[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%151 : i64)
  ^bb1(%154: i64):  // 2 preds: ^bb0, ^bb11
    %155 = llvm.icmp "slt" %154, %152 : i64
    llvm.cond_br %155, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%156 : i64)
  ^bb3(%159: i64):  // 2 preds: ^bb2, ^bb10
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(4 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%161 : i64)
  ^bb5(%164: i64):  // 2 preds: ^bb4, ^bb9
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%166 : i64)
  ^bb7(%169: i64):  // 2 preds: ^bb6, ^bb8
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %171 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.mlir.constant(4 : index) : i64
    %173 = llvm.mul %154, %172  : i64
    %174 = llvm.mlir.constant(4 : index) : i64
    %175 = llvm.mul %159, %174  : i64
    %176 = llvm.add %173, %175  : i64
    %177 = llvm.add %176, %164  : i64
    %178 = llvm.add %177, %169  : i64
    %179 = llvm.getelementptr %171[%178] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %180 = llvm.load %179 : !llvm.ptr<i32>
    %181 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %182 = llvm.load %181 : !llvm.ptr<i32>
    %183 = llvm.icmp "slt" %180, %182 : i32
    %184 = llvm.select %183, %182, %180 : i1, i32
    %185 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %186 = llvm.load %185 : !llvm.ptr<i32>
    %187 = llvm.icmp "slt" %184, %186 : i32
    %188 = llvm.select %187, %184, %186 : i1, i32
    %189 = llvm.extractvalue %150[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.mlir.constant(4 : index) : i64
    %191 = llvm.mul %154, %190  : i64
    %192 = llvm.mlir.constant(4 : index) : i64
    %193 = llvm.mul %159, %192  : i64
    %194 = llvm.add %191, %193  : i64
    %195 = llvm.add %194, %164  : i64
    %196 = llvm.add %195, %169  : i64
    %197 = llvm.getelementptr %189[%196] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %188, %197 : !llvm.ptr<i32>
    %198 = llvm.add %169, %168  : i64
    llvm.br ^bb7(%198 : i64)
  ^bb9:  // pred: ^bb7
    %199 = llvm.add %164, %163  : i64
    llvm.br ^bb5(%199 : i64)
  ^bb10:  // pred: ^bb5
    %200 = llvm.add %159, %158  : i64
    llvm.br ^bb3(%200 : i64)
  ^bb11:  // pred: ^bb3
    %201 = llvm.add %154, %153  : i64
    llvm.br ^bb1(%201 : i64)
  ^bb12:  // pred: ^bb1
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.null : !llvm.ptr<i32>
    %208 = llvm.getelementptr %207[%202] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %209 = llvm.ptrtoint %208 : !llvm.ptr<i32> to i64
    %210 = llvm.mlir.constant(16 : index) : i64
    %211 = llvm.add %209, %210  : i64
    %212 = llvm.call @malloc(%211) : (i64) -> !llvm.ptr<i8>
    %213 = llvm.bitcast %212 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %214 = llvm.ptrtoint %213 : !llvm.ptr<i32> to i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.sub %210, %215  : i64
    %217 = llvm.add %214, %216  : i64
    %218 = llvm.urem %217, %210  : i64
    %219 = llvm.sub %217, %218  : i64
    %220 = llvm.inttoptr %219 : i64 to !llvm.ptr<i32>
    %221 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %222 = llvm.insertvalue %213, %221[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %220, %222[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.insertvalue %224, %223[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.insertvalue %202, %225[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.insertvalue %203, %226[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.insertvalue %204, %227[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.insertvalue %205, %228[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.insertvalue %203, %229[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.insertvalue %204, %230[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.insertvalue %205, %231[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.insertvalue %206, %232[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%234 : i64)
  ^bb13(%237: i64):  // 2 preds: ^bb12, ^bb23
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%239 : i64)
  ^bb15(%242: i64):  // 2 preds: ^bb14, ^bb22
    %243 = llvm.icmp "slt" %242, %240 : i64
    llvm.cond_br %243, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%244 : i64)
  ^bb17(%247: i64):  // 2 preds: ^bb16, ^bb21
    %248 = llvm.icmp "slt" %247, %245 : i64
    llvm.cond_br %248, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%249 : i64)
  ^bb19(%252: i64):  // 2 preds: ^bb18, ^bb20
    %253 = llvm.icmp "slt" %252, %250 : i64
    llvm.cond_br %253, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %254 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.add %237, %242  : i64
    %256 = llvm.add %255, %247  : i64
    %257 = llvm.add %256, %252  : i64
    %258 = llvm.getelementptr %254[%257] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %259 = llvm.load %258 : !llvm.ptr<i32>
    %260 = llvm.mlir.constant(false) : i1
    %261 = "llvm.intr.abs"(%259, %260) : (i32, i1) -> i32
    %262 = llvm.extractvalue %233[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.add %237, %242  : i64
    %264 = llvm.add %263, %247  : i64
    %265 = llvm.add %264, %252  : i64
    %266 = llvm.getelementptr %262[%265] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %261, %266 : !llvm.ptr<i32>
    %267 = llvm.add %252, %251  : i64
    llvm.br ^bb19(%267 : i64)
  ^bb21:  // pred: ^bb19
    %268 = llvm.add %247, %246  : i64
    llvm.br ^bb17(%268 : i64)
  ^bb22:  // pred: ^bb17
    %269 = llvm.add %242, %241  : i64
    llvm.br ^bb15(%269 : i64)
  ^bb23:  // pred: ^bb15
    %270 = llvm.add %237, %236  : i64
    llvm.br ^bb13(%270 : i64)
  ^bb24:  // pred: ^bb13
    %271 = llvm.mlir.constant(4 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mlir.null : !llvm.ptr<i64>
    %274 = llvm.getelementptr %273[%271] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %275 = llvm.ptrtoint %274 : !llvm.ptr<i64> to i64
    %276 = llvm.mlir.constant(16 : index) : i64
    %277 = llvm.add %275, %276  : i64
    %278 = llvm.call @malloc(%277) : (i64) -> !llvm.ptr<i8>
    %279 = llvm.bitcast %278 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %280 = llvm.ptrtoint %279 : !llvm.ptr<i64> to i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.sub %276, %281  : i64
    %283 = llvm.add %280, %282  : i64
    %284 = llvm.urem %283, %276  : i64
    %285 = llvm.sub %283, %284  : i64
    %286 = llvm.inttoptr %285 : i64 to !llvm.ptr<i64>
    %287 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %288 = llvm.insertvalue %279, %287[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.insertvalue %286, %288[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.insertvalue %290, %289[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %292 = llvm.insertvalue %271, %291[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.insertvalue %272, %292[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.mlir.constant(4 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%294 : i64)
  ^bb25(%297: i64):  // 2 preds: ^bb24, ^bb26
    %298 = llvm.icmp "slt" %297, %295 : i64
    llvm.cond_br %298, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %299 = llvm.extractvalue %293[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.getelementptr %299[%297] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %300 : !llvm.ptr<i64>
    %301 = llvm.add %297, %296  : i64
    llvm.br ^bb25(%301 : i64)
  ^bb27:  // pred: ^bb25
    %302 = llvm.mlir.constant(4 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.mlir.null : !llvm.ptr<i64>
    %305 = llvm.getelementptr %304[%302] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %306 = llvm.ptrtoint %305 : !llvm.ptr<i64> to i64
    %307 = llvm.mlir.constant(16 : index) : i64
    %308 = llvm.add %306, %307  : i64
    %309 = llvm.call @malloc(%308) : (i64) -> !llvm.ptr<i8>
    %310 = llvm.bitcast %309 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %311 = llvm.ptrtoint %310 : !llvm.ptr<i64> to i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.sub %307, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.urem %314, %307  : i64
    %316 = llvm.sub %314, %315  : i64
    %317 = llvm.inttoptr %316 : i64 to !llvm.ptr<i64>
    %318 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %319 = llvm.insertvalue %310, %318[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.insertvalue %317, %319[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.insertvalue %321, %320[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.insertvalue %302, %322[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.insertvalue %303, %323[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(4 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%325 : i64)
  ^bb28(%328: i64):  // 2 preds: ^bb27, ^bb29
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %330 = llvm.extractvalue %293[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.getelementptr %330[%328] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %332 = llvm.load %331 : !llvm.ptr<i64>
    %333 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %334 = llvm.load %333 : !llvm.ptr<i64>
    %335 = llvm.mul %332, %334  : i64
    %336 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.getelementptr %336[%328] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %335, %337 : !llvm.ptr<i64>
    %338 = llvm.add %328, %327  : i64
    llvm.br ^bb28(%338 : i64)
  ^bb30:  // pred: ^bb28
    %339 = llvm.mlir.constant(4 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.mlir.null : !llvm.ptr<i1>
    %342 = llvm.getelementptr %341[%339] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %343 = llvm.ptrtoint %342 : !llvm.ptr<i1> to i64
    %344 = llvm.mlir.constant(16 : index) : i64
    %345 = llvm.add %343, %344  : i64
    %346 = llvm.call @malloc(%345) : (i64) -> !llvm.ptr<i8>
    %347 = llvm.bitcast %346 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %348 = llvm.ptrtoint %347 : !llvm.ptr<i1> to i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.sub %344, %349  : i64
    %351 = llvm.add %348, %350  : i64
    %352 = llvm.urem %351, %344  : i64
    %353 = llvm.sub %351, %352  : i64
    %354 = llvm.inttoptr %353 : i64 to !llvm.ptr<i1>
    %355 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %356 = llvm.insertvalue %347, %355[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %357 = llvm.insertvalue %354, %356[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.insertvalue %358, %357[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %360 = llvm.insertvalue %339, %359[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %361 = llvm.insertvalue %340, %360[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(4 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%362 : i64)
  ^bb31(%365: i64):  // 2 preds: ^bb30, ^bb32
    %366 = llvm.icmp "slt" %365, %363 : i64
    llvm.cond_br %366, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %367 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.getelementptr %367[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %369 = llvm.load %368 : !llvm.ptr<i64>
    %370 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.getelementptr %370[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %372 = llvm.load %371 : !llvm.ptr<i64>
    %373 = llvm.icmp "eq" %369, %372 : i64
    %374 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %375 = llvm.getelementptr %374[%365] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %373, %375 : !llvm.ptr<i1>
    %376 = llvm.add %365, %364  : i64
    llvm.br ^bb31(%376 : i64)
  ^bb33:  // pred: ^bb31
    %377 = llvm.mlir.constant(4 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    %379 = llvm.mlir.null : !llvm.ptr<i64>
    %380 = llvm.getelementptr %379[%377] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %381 = llvm.ptrtoint %380 : !llvm.ptr<i64> to i64
    %382 = llvm.mlir.constant(16 : index) : i64
    %383 = llvm.add %381, %382  : i64
    %384 = llvm.call @malloc(%383) : (i64) -> !llvm.ptr<i8>
    %385 = llvm.bitcast %384 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %386 = llvm.ptrtoint %385 : !llvm.ptr<i64> to i64
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.sub %382, %387  : i64
    %389 = llvm.add %386, %388  : i64
    %390 = llvm.urem %389, %382  : i64
    %391 = llvm.sub %389, %390  : i64
    %392 = llvm.inttoptr %391 : i64 to !llvm.ptr<i64>
    %393 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %394 = llvm.insertvalue %385, %393[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %395 = llvm.insertvalue %392, %394[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %396 = llvm.mlir.constant(0 : index) : i64
    %397 = llvm.insertvalue %396, %395[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %398 = llvm.insertvalue %377, %397[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %399 = llvm.insertvalue %378, %398[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.mlir.constant(4 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%400 : i64)
  ^bb34(%403: i64):  // 2 preds: ^bb33, ^bb35
    %404 = llvm.icmp "slt" %403, %401 : i64
    llvm.cond_br %404, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %405 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %406 = llvm.getelementptr %405[%403] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %407 = llvm.load %406 : !llvm.ptr<i1>
    %408 = llvm.extractvalue %293[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %409 = llvm.getelementptr %408[%403] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %410 = llvm.load %409 : !llvm.ptr<i64>
    %411 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %412 = llvm.getelementptr %411[%403] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %413 = llvm.load %412 : !llvm.ptr<i64>
    %414 = llvm.select %407, %410, %413 : i1, i64
    %415 = llvm.extractvalue %399[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %416 = llvm.getelementptr %415[%403] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %414, %416 : !llvm.ptr<i64>
    %417 = llvm.add %403, %402  : i64
    llvm.br ^bb34(%417 : i64)
  ^bb36:  // pred: ^bb34
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.mlir.null : !llvm.ptr<i32>
    %424 = llvm.getelementptr %423[%418] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %425 = llvm.ptrtoint %424 : !llvm.ptr<i32> to i64
    %426 = llvm.mlir.constant(16 : index) : i64
    %427 = llvm.add %425, %426  : i64
    %428 = llvm.call @malloc(%427) : (i64) -> !llvm.ptr<i8>
    %429 = llvm.bitcast %428 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %430 = llvm.ptrtoint %429 : !llvm.ptr<i32> to i64
    %431 = llvm.mlir.constant(1 : index) : i64
    %432 = llvm.sub %426, %431  : i64
    %433 = llvm.add %430, %432  : i64
    %434 = llvm.urem %433, %426  : i64
    %435 = llvm.sub %433, %434  : i64
    %436 = llvm.inttoptr %435 : i64 to !llvm.ptr<i32>
    %437 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %438 = llvm.insertvalue %429, %437[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %436, %438[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.insertvalue %440, %439[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.insertvalue %418, %441[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %419, %442[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %420, %443[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %421, %444[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %419, %445[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.insertvalue %420, %446[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.insertvalue %421, %447[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %422, %448[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%450 : i64)
  ^bb37(%453: i64):  // 2 preds: ^bb36, ^bb47
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%455 : i64)
  ^bb39(%458: i64):  // 2 preds: ^bb38, ^bb46
    %459 = llvm.icmp "slt" %458, %456 : i64
    llvm.cond_br %459, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %460 = llvm.mlir.constant(0 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%460 : i64)
  ^bb41(%463: i64):  // 2 preds: ^bb40, ^bb45
    %464 = llvm.icmp "slt" %463, %461 : i64
    llvm.cond_br %464, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%465 : i64)
  ^bb43(%468: i64):  // 2 preds: ^bb42, ^bb44
    %469 = llvm.icmp "slt" %468, %466 : i64
    llvm.cond_br %469, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %470 = llvm.extractvalue %233[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.add %73, %73  : i64
    %472 = llvm.add %471, %73  : i64
    %473 = llvm.add %472, %73  : i64
    %474 = llvm.getelementptr %470[%473] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %475 = llvm.load %474 : !llvm.ptr<i32>
    %476 = llvm.extractvalue %449[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.add %453, %458  : i64
    %478 = llvm.add %477, %463  : i64
    %479 = llvm.add %478, %468  : i64
    %480 = llvm.getelementptr %476[%479] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %475, %480 : !llvm.ptr<i32>
    %481 = llvm.add %468, %467  : i64
    llvm.br ^bb43(%481 : i64)
  ^bb45:  // pred: ^bb43
    %482 = llvm.add %463, %462  : i64
    llvm.br ^bb41(%482 : i64)
  ^bb46:  // pred: ^bb41
    %483 = llvm.add %458, %457  : i64
    llvm.br ^bb39(%483 : i64)
  ^bb47:  // pred: ^bb39
    %484 = llvm.add %453, %452  : i64
    llvm.br ^bb37(%484 : i64)
  ^bb48:  // pred: ^bb37
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    %487 = llvm.mlir.constant(4 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.mlir.constant(4 : index) : i64
    %491 = llvm.mlir.constant(4 : index) : i64
    %492 = llvm.mlir.null : !llvm.ptr<i32>
    %493 = llvm.getelementptr %492[%491] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %494 = llvm.ptrtoint %493 : !llvm.ptr<i32> to i64
    %495 = llvm.mlir.constant(16 : index) : i64
    %496 = llvm.add %494, %495  : i64
    %497 = llvm.call @malloc(%496) : (i64) -> !llvm.ptr<i8>
    %498 = llvm.bitcast %497 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %499 = llvm.ptrtoint %498 : !llvm.ptr<i32> to i64
    %500 = llvm.mlir.constant(1 : index) : i64
    %501 = llvm.sub %495, %500  : i64
    %502 = llvm.add %499, %501  : i64
    %503 = llvm.urem %502, %495  : i64
    %504 = llvm.sub %502, %503  : i64
    %505 = llvm.inttoptr %504 : i64 to !llvm.ptr<i32>
    %506 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %507 = llvm.insertvalue %498, %506[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.insertvalue %505, %507[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.mlir.constant(0 : index) : i64
    %510 = llvm.insertvalue %509, %508[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.insertvalue %485, %510[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.insertvalue %486, %511[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.insertvalue %487, %512[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %514 = llvm.insertvalue %488, %513[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.insertvalue %490, %514[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.insertvalue %487, %515[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.insertvalue %488, %516[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.insertvalue %489, %517[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %519 = llvm.mlir.constant(0 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%519 : i64)
  ^bb49(%522: i64):  // 2 preds: ^bb48, ^bb59
    %523 = llvm.icmp "slt" %522, %520 : i64
    llvm.cond_br %523, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %524 = llvm.mlir.constant(0 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%524 : i64)
  ^bb51(%527: i64):  // 2 preds: ^bb50, ^bb58
    %528 = llvm.icmp "slt" %527, %525 : i64
    llvm.cond_br %528, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %529 = llvm.mlir.constant(0 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%529 : i64)
  ^bb53(%532: i64):  // 2 preds: ^bb52, ^bb57
    %533 = llvm.icmp "slt" %532, %530 : i64
    llvm.cond_br %533, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %534 = llvm.mlir.constant(0 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%534 : i64)
  ^bb55(%537: i64):  // 2 preds: ^bb54, ^bb56
    %538 = llvm.icmp "slt" %537, %535 : i64
    llvm.cond_br %538, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %539 = llvm.extractvalue %233[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %540 = llvm.add %522, %527  : i64
    %541 = llvm.add %540, %532  : i64
    %542 = llvm.add %541, %537  : i64
    %543 = llvm.getelementptr %539[%542] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %544 = llvm.load %543 : !llvm.ptr<i32>
    %545 = llvm.extractvalue %518[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.mlir.constant(4 : index) : i64
    %547 = llvm.mul %522, %546  : i64
    %548 = llvm.mlir.constant(4 : index) : i64
    %549 = llvm.mul %527, %548  : i64
    %550 = llvm.add %547, %549  : i64
    %551 = llvm.add %550, %532  : i64
    %552 = llvm.add %551, %537  : i64
    %553 = llvm.getelementptr %545[%552] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %544, %553 : !llvm.ptr<i32>
    %554 = llvm.add %537, %536  : i64
    llvm.br ^bb55(%554 : i64)
  ^bb57:  // pred: ^bb55
    %555 = llvm.add %532, %531  : i64
    llvm.br ^bb53(%555 : i64)
  ^bb58:  // pred: ^bb53
    %556 = llvm.add %527, %526  : i64
    llvm.br ^bb51(%556 : i64)
  ^bb59:  // pred: ^bb51
    %557 = llvm.add %522, %521  : i64
    llvm.br ^bb49(%557 : i64)
  ^bb60:  // pred: ^bb49
    %558 = llvm.mlir.constant(0 : index) : i64
    %559 = llvm.mlir.constant(1 : index) : i64
    %560 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%558 : i64)
  ^bb61(%561: i64):  // 2 preds: ^bb60, ^bb71
    %562 = llvm.icmp "slt" %561, %559 : i64
    llvm.cond_br %562, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %563 = llvm.mlir.constant(0 : index) : i64
    %564 = llvm.mlir.constant(1 : index) : i64
    %565 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%563 : i64)
  ^bb63(%566: i64):  // 2 preds: ^bb62, ^bb70
    %567 = llvm.icmp "slt" %566, %564 : i64
    llvm.cond_br %567, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %568 = llvm.mlir.constant(0 : index) : i64
    %569 = llvm.mlir.constant(1 : index) : i64
    %570 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%568 : i64)
  ^bb65(%571: i64):  // 2 preds: ^bb64, ^bb69
    %572 = llvm.icmp "slt" %571, %569 : i64
    llvm.cond_br %572, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %573 = llvm.mlir.constant(0 : index) : i64
    %574 = llvm.mlir.constant(1 : index) : i64
    %575 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%573 : i64)
  ^bb67(%576: i64):  // 2 preds: ^bb66, ^bb68
    %577 = llvm.icmp "slt" %576, %574 : i64
    llvm.cond_br %577, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %578 = llvm.mlir.constant(1 : index) : i64
    %579 = llvm.add %571, %578  : i64
    %580 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %581 = llvm.add %561, %566  : i64
    %582 = llvm.add %581, %571  : i64
    %583 = llvm.add %582, %576  : i64
    %584 = llvm.getelementptr %580[%583] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %585 = llvm.load %584 : !llvm.ptr<i32>
    %586 = llvm.extractvalue %518[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %587 = llvm.mlir.constant(4 : index) : i64
    %588 = llvm.mul %561, %587  : i64
    %589 = llvm.mlir.constant(4 : index) : i64
    %590 = llvm.mul %566, %589  : i64
    %591 = llvm.add %588, %590  : i64
    %592 = llvm.add %591, %579  : i64
    %593 = llvm.add %592, %576  : i64
    %594 = llvm.getelementptr %586[%593] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %585, %594 : !llvm.ptr<i32>
    %595 = llvm.add %576, %575  : i64
    llvm.br ^bb67(%595 : i64)
  ^bb69:  // pred: ^bb67
    %596 = llvm.add %571, %570  : i64
    llvm.br ^bb65(%596 : i64)
  ^bb70:  // pred: ^bb65
    %597 = llvm.add %566, %565  : i64
    llvm.br ^bb63(%597 : i64)
  ^bb71:  // pred: ^bb63
    %598 = llvm.add %561, %560  : i64
    llvm.br ^bb61(%598 : i64)
  ^bb72:  // pred: ^bb61
    %599 = llvm.mlir.constant(0 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%599 : i64)
  ^bb73(%602: i64):  // 2 preds: ^bb72, ^bb83
    %603 = llvm.icmp "slt" %602, %600 : i64
    llvm.cond_br %603, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %604 = llvm.mlir.constant(0 : index) : i64
    %605 = llvm.mlir.constant(1 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%604 : i64)
  ^bb75(%607: i64):  // 2 preds: ^bb74, ^bb82
    %608 = llvm.icmp "slt" %607, %605 : i64
    llvm.cond_br %608, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %609 = llvm.mlir.constant(0 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    %611 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%609 : i64)
  ^bb77(%612: i64):  // 2 preds: ^bb76, ^bb81
    %613 = llvm.icmp "slt" %612, %610 : i64
    llvm.cond_br %613, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %614 = llvm.mlir.constant(0 : index) : i64
    %615 = llvm.mlir.constant(1 : index) : i64
    %616 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%614 : i64)
  ^bb79(%617: i64):  // 2 preds: ^bb78, ^bb80
    %618 = llvm.icmp "slt" %617, %615 : i64
    llvm.cond_br %618, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %619 = llvm.mlir.constant(2 : index) : i64
    %620 = llvm.add %612, %619  : i64
    %621 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %622 = llvm.add %602, %607  : i64
    %623 = llvm.add %622, %612  : i64
    %624 = llvm.add %623, %617  : i64
    %625 = llvm.getelementptr %621[%624] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %626 = llvm.load %625 : !llvm.ptr<i32>
    %627 = llvm.extractvalue %518[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %628 = llvm.mlir.constant(4 : index) : i64
    %629 = llvm.mul %602, %628  : i64
    %630 = llvm.mlir.constant(4 : index) : i64
    %631 = llvm.mul %607, %630  : i64
    %632 = llvm.add %629, %631  : i64
    %633 = llvm.add %632, %620  : i64
    %634 = llvm.add %633, %617  : i64
    %635 = llvm.getelementptr %627[%634] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %626, %635 : !llvm.ptr<i32>
    %636 = llvm.add %617, %616  : i64
    llvm.br ^bb79(%636 : i64)
  ^bb81:  // pred: ^bb79
    %637 = llvm.add %612, %611  : i64
    llvm.br ^bb77(%637 : i64)
  ^bb82:  // pred: ^bb77
    %638 = llvm.add %607, %606  : i64
    llvm.br ^bb75(%638 : i64)
  ^bb83:  // pred: ^bb75
    %639 = llvm.add %602, %601  : i64
    llvm.br ^bb73(%639 : i64)
  ^bb84:  // pred: ^bb73
    %640 = llvm.mlir.constant(0 : index) : i64
    %641 = llvm.mlir.constant(1 : index) : i64
    %642 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%640 : i64)
  ^bb85(%643: i64):  // 2 preds: ^bb84, ^bb95
    %644 = llvm.icmp "slt" %643, %641 : i64
    llvm.cond_br %644, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %645 = llvm.mlir.constant(0 : index) : i64
    %646 = llvm.mlir.constant(1 : index) : i64
    %647 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%645 : i64)
  ^bb87(%648: i64):  // 2 preds: ^bb86, ^bb94
    %649 = llvm.icmp "slt" %648, %646 : i64
    llvm.cond_br %649, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %650 = llvm.mlir.constant(0 : index) : i64
    %651 = llvm.mlir.constant(1 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%650 : i64)
  ^bb89(%653: i64):  // 2 preds: ^bb88, ^bb93
    %654 = llvm.icmp "slt" %653, %651 : i64
    llvm.cond_br %654, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %655 = llvm.mlir.constant(0 : index) : i64
    %656 = llvm.mlir.constant(1 : index) : i64
    %657 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%655 : i64)
  ^bb91(%658: i64):  // 2 preds: ^bb90, ^bb92
    %659 = llvm.icmp "slt" %658, %656 : i64
    llvm.cond_br %659, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %660 = llvm.mlir.constant(3 : index) : i64
    %661 = llvm.add %653, %660  : i64
    %662 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %663 = llvm.add %643, %648  : i64
    %664 = llvm.add %663, %653  : i64
    %665 = llvm.add %664, %658  : i64
    %666 = llvm.getelementptr %662[%665] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %667 = llvm.load %666 : !llvm.ptr<i32>
    %668 = llvm.extractvalue %518[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %669 = llvm.mlir.constant(4 : index) : i64
    %670 = llvm.mul %643, %669  : i64
    %671 = llvm.mlir.constant(4 : index) : i64
    %672 = llvm.mul %648, %671  : i64
    %673 = llvm.add %670, %672  : i64
    %674 = llvm.add %673, %661  : i64
    %675 = llvm.add %674, %658  : i64
    %676 = llvm.getelementptr %668[%675] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %667, %676 : !llvm.ptr<i32>
    %677 = llvm.add %658, %657  : i64
    llvm.br ^bb91(%677 : i64)
  ^bb93:  // pred: ^bb91
    %678 = llvm.add %653, %652  : i64
    llvm.br ^bb89(%678 : i64)
  ^bb94:  // pred: ^bb89
    %679 = llvm.add %648, %647  : i64
    llvm.br ^bb87(%679 : i64)
  ^bb95:  // pred: ^bb87
    %680 = llvm.add %643, %642  : i64
    llvm.br ^bb85(%680 : i64)
  ^bb96:  // pred: ^bb85
    %681 = llvm.mlir.constant(1 : index) : i64
    %682 = llvm.mlir.constant(3 : index) : i64
    %683 = llvm.mlir.constant(4 : index) : i64
    %684 = llvm.mlir.constant(1 : index) : i64
    %685 = llvm.mlir.constant(1 : index) : i64
    %686 = llvm.mlir.constant(12 : index) : i64
    %687 = llvm.mlir.constant(12 : index) : i64
    %688 = llvm.mlir.null : !llvm.ptr<i32>
    %689 = llvm.getelementptr %688[%687] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %690 = llvm.ptrtoint %689 : !llvm.ptr<i32> to i64
    %691 = llvm.mlir.constant(16 : index) : i64
    %692 = llvm.add %690, %691  : i64
    %693 = llvm.call @malloc(%692) : (i64) -> !llvm.ptr<i8>
    %694 = llvm.bitcast %693 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %695 = llvm.ptrtoint %694 : !llvm.ptr<i32> to i64
    %696 = llvm.mlir.constant(1 : index) : i64
    %697 = llvm.sub %691, %696  : i64
    %698 = llvm.add %695, %697  : i64
    %699 = llvm.urem %698, %691  : i64
    %700 = llvm.sub %698, %699  : i64
    %701 = llvm.inttoptr %700 : i64 to !llvm.ptr<i32>
    %702 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %703 = llvm.insertvalue %694, %702[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %704 = llvm.insertvalue %701, %703[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %705 = llvm.mlir.constant(0 : index) : i64
    %706 = llvm.insertvalue %705, %704[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %707 = llvm.insertvalue %681, %706[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %708 = llvm.insertvalue %682, %707[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %709 = llvm.insertvalue %683, %708[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %710 = llvm.insertvalue %684, %709[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %711 = llvm.insertvalue %686, %710[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %712 = llvm.insertvalue %683, %711[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %713 = llvm.insertvalue %684, %712[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %714 = llvm.insertvalue %685, %713[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %715 = llvm.mlir.constant(0 : index) : i64
    %716 = llvm.mlir.constant(1 : index) : i64
    %717 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%715 : i64)
  ^bb97(%718: i64):  // 2 preds: ^bb96, ^bb107
    %719 = llvm.icmp "slt" %718, %716 : i64
    llvm.cond_br %719, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %720 = llvm.mlir.constant(0 : index) : i64
    %721 = llvm.mlir.constant(1 : index) : i64
    %722 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%720 : i64)
  ^bb99(%723: i64):  // 2 preds: ^bb98, ^bb106
    %724 = llvm.icmp "slt" %723, %721 : i64
    llvm.cond_br %724, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %725 = llvm.mlir.constant(0 : index) : i64
    %726 = llvm.mlir.constant(4 : index) : i64
    %727 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%725 : i64)
  ^bb101(%728: i64):  // 2 preds: ^bb100, ^bb105
    %729 = llvm.icmp "slt" %728, %726 : i64
    llvm.cond_br %729, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %730 = llvm.mlir.constant(0 : index) : i64
    %731 = llvm.mlir.constant(1 : index) : i64
    %732 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%730 : i64)
  ^bb103(%733: i64):  // 2 preds: ^bb102, ^bb104
    %734 = llvm.icmp "slt" %733, %731 : i64
    llvm.cond_br %734, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %735 = llvm.extractvalue %150[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %736 = llvm.mlir.constant(4 : index) : i64
    %737 = llvm.mul %718, %736  : i64
    %738 = llvm.mlir.constant(4 : index) : i64
    %739 = llvm.mul %723, %738  : i64
    %740 = llvm.add %737, %739  : i64
    %741 = llvm.add %740, %728  : i64
    %742 = llvm.add %741, %733  : i64
    %743 = llvm.getelementptr %735[%742] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %744 = llvm.load %743 : !llvm.ptr<i32>
    %745 = llvm.extractvalue %714[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %746 = llvm.mlir.constant(12 : index) : i64
    %747 = llvm.mul %718, %746  : i64
    %748 = llvm.mlir.constant(4 : index) : i64
    %749 = llvm.mul %723, %748  : i64
    %750 = llvm.add %747, %749  : i64
    %751 = llvm.add %750, %728  : i64
    %752 = llvm.add %751, %733  : i64
    %753 = llvm.getelementptr %745[%752] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %744, %753 : !llvm.ptr<i32>
    %754 = llvm.add %733, %732  : i64
    llvm.br ^bb103(%754 : i64)
  ^bb105:  // pred: ^bb103
    %755 = llvm.add %728, %727  : i64
    llvm.br ^bb101(%755 : i64)
  ^bb106:  // pred: ^bb101
    %756 = llvm.add %723, %722  : i64
    llvm.br ^bb99(%756 : i64)
  ^bb107:  // pred: ^bb99
    %757 = llvm.add %718, %717  : i64
    llvm.br ^bb97(%757 : i64)
  ^bb108:  // pred: ^bb97
    %758 = llvm.mlir.constant(0 : index) : i64
    %759 = llvm.mlir.constant(1 : index) : i64
    %760 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%758 : i64)
  ^bb109(%761: i64):  // 2 preds: ^bb108, ^bb119
    %762 = llvm.icmp "slt" %761, %759 : i64
    llvm.cond_br %762, ^bb110, ^bb120
  ^bb110:  // pred: ^bb109
    %763 = llvm.mlir.constant(0 : index) : i64
    %764 = llvm.mlir.constant(1 : index) : i64
    %765 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb111(%763 : i64)
  ^bb111(%766: i64):  // 2 preds: ^bb110, ^bb118
    %767 = llvm.icmp "slt" %766, %764 : i64
    llvm.cond_br %767, ^bb112, ^bb119
  ^bb112:  // pred: ^bb111
    %768 = llvm.mlir.constant(0 : index) : i64
    %769 = llvm.mlir.constant(4 : index) : i64
    %770 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb113(%768 : i64)
  ^bb113(%771: i64):  // 2 preds: ^bb112, ^bb117
    %772 = llvm.icmp "slt" %771, %769 : i64
    llvm.cond_br %772, ^bb114, ^bb118
  ^bb114:  // pred: ^bb113
    %773 = llvm.mlir.constant(0 : index) : i64
    %774 = llvm.mlir.constant(1 : index) : i64
    %775 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%773 : i64)
  ^bb115(%776: i64):  // 2 preds: ^bb114, ^bb116
    %777 = llvm.icmp "slt" %776, %774 : i64
    llvm.cond_br %777, ^bb116, ^bb117
  ^bb116:  // pred: ^bb115
    %778 = llvm.mlir.constant(1 : index) : i64
    %779 = llvm.add %766, %778  : i64
    %780 = llvm.extractvalue %518[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %781 = llvm.mlir.constant(4 : index) : i64
    %782 = llvm.mul %761, %781  : i64
    %783 = llvm.mlir.constant(4 : index) : i64
    %784 = llvm.mul %766, %783  : i64
    %785 = llvm.add %782, %784  : i64
    %786 = llvm.add %785, %771  : i64
    %787 = llvm.add %786, %776  : i64
    %788 = llvm.getelementptr %780[%787] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %789 = llvm.load %788 : !llvm.ptr<i32>
    %790 = llvm.extractvalue %714[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %791 = llvm.mlir.constant(12 : index) : i64
    %792 = llvm.mul %761, %791  : i64
    %793 = llvm.mlir.constant(4 : index) : i64
    %794 = llvm.mul %779, %793  : i64
    %795 = llvm.add %792, %794  : i64
    %796 = llvm.add %795, %771  : i64
    %797 = llvm.add %796, %776  : i64
    %798 = llvm.getelementptr %790[%797] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %789, %798 : !llvm.ptr<i32>
    %799 = llvm.add %776, %775  : i64
    llvm.br ^bb115(%799 : i64)
  ^bb117:  // pred: ^bb115
    %800 = llvm.add %771, %770  : i64
    llvm.br ^bb113(%800 : i64)
  ^bb118:  // pred: ^bb113
    %801 = llvm.add %766, %765  : i64
    llvm.br ^bb111(%801 : i64)
  ^bb119:  // pred: ^bb111
    %802 = llvm.add %761, %760  : i64
    llvm.br ^bb109(%802 : i64)
  ^bb120:  // pred: ^bb109
    %803 = llvm.mlir.constant(0 : index) : i64
    %804 = llvm.mlir.constant(1 : index) : i64
    %805 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb121(%803 : i64)
  ^bb121(%806: i64):  // 2 preds: ^bb120, ^bb131
    %807 = llvm.icmp "slt" %806, %804 : i64
    llvm.cond_br %807, ^bb122, ^bb132
  ^bb122:  // pred: ^bb121
    %808 = llvm.mlir.constant(0 : index) : i64
    %809 = llvm.mlir.constant(1 : index) : i64
    %810 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb123(%808 : i64)
  ^bb123(%811: i64):  // 2 preds: ^bb122, ^bb130
    %812 = llvm.icmp "slt" %811, %809 : i64
    llvm.cond_br %812, ^bb124, ^bb131
  ^bb124:  // pred: ^bb123
    %813 = llvm.mlir.constant(0 : index) : i64
    %814 = llvm.mlir.constant(4 : index) : i64
    %815 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb125(%813 : i64)
  ^bb125(%816: i64):  // 2 preds: ^bb124, ^bb129
    %817 = llvm.icmp "slt" %816, %814 : i64
    llvm.cond_br %817, ^bb126, ^bb130
  ^bb126:  // pred: ^bb125
    %818 = llvm.mlir.constant(0 : index) : i64
    %819 = llvm.mlir.constant(1 : index) : i64
    %820 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb127(%818 : i64)
  ^bb127(%821: i64):  // 2 preds: ^bb126, ^bb128
    %822 = llvm.icmp "slt" %821, %819 : i64
    llvm.cond_br %822, ^bb128, ^bb129
  ^bb128:  // pred: ^bb127
    %823 = llvm.mlir.constant(2 : index) : i64
    %824 = llvm.add %811, %823  : i64
    %825 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %826 = llvm.mlir.constant(4 : index) : i64
    %827 = llvm.mul %806, %826  : i64
    %828 = llvm.mlir.constant(4 : index) : i64
    %829 = llvm.mul %811, %828  : i64
    %830 = llvm.add %827, %829  : i64
    %831 = llvm.add %830, %816  : i64
    %832 = llvm.add %831, %821  : i64
    %833 = llvm.getelementptr %825[%832] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %834 = llvm.load %833 : !llvm.ptr<i32>
    %835 = llvm.extractvalue %714[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %836 = llvm.mlir.constant(12 : index) : i64
    %837 = llvm.mul %806, %836  : i64
    %838 = llvm.mlir.constant(4 : index) : i64
    %839 = llvm.mul %824, %838  : i64
    %840 = llvm.add %837, %839  : i64
    %841 = llvm.add %840, %816  : i64
    %842 = llvm.add %841, %821  : i64
    %843 = llvm.getelementptr %835[%842] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %834, %843 : !llvm.ptr<i32>
    %844 = llvm.add %821, %820  : i64
    llvm.br ^bb127(%844 : i64)
  ^bb129:  // pred: ^bb127
    %845 = llvm.add %816, %815  : i64
    llvm.br ^bb125(%845 : i64)
  ^bb130:  // pred: ^bb125
    %846 = llvm.add %811, %810  : i64
    llvm.br ^bb123(%846 : i64)
  ^bb131:  // pred: ^bb123
    %847 = llvm.add %806, %805  : i64
    llvm.br ^bb121(%847 : i64)
  ^bb132:  // pred: ^bb121
    %848 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %849 = llvm.insertvalue %449, %848[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %850 = llvm.insertvalue %714, %849[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %850 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg6: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v10_0", "v2_0", "v7_0", "v6_0", "v5_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v4_0"]} {
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<423 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<423 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

